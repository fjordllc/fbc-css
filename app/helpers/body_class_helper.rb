# frozen_string_literal: true

module BodyClassHelper
  def qualified_controller_name
    controller.controller_path.tr('/', '-')
  end

  def page_category
    if params[:action] == 'new' || params[:action] == 'create' || params[:action] == 'edit' || params[:action] == 'update'
      'edit-page'
    elsif params[:action] == 'index'
      'index-page'
    elsif params[:action] == 'show'
      'show-page'
    else
      'other-page'
    end
  end

  def biz_page?
    qualified_controller_name.include?('biz-')
  end

  def admin_page?
    qualified_controller_name.include?('admin-')
  end

  def user_role_class
    if biz_page?
      'is-biz-page'
    elsif admin_page?
      'is-admin-page'
    else
      'is-liv-page'
    end
  end

  def has_fixed_bottom_nav?
    body_class.include?('has-fixed-bottom-nav')
  end

  def browser_class
    if ie11?
      'ie11'
    else
      request.browser.downcase
    end
  end

  def ie11?
    request.browser == 'Internet Explorer' && request.browser_version.include?('11.')
  end

  def os_class
    return 'windows' + request.os.sub!(/Windows /, '') if need_remove_windows?
    return 'windows' + request.os if Woothee.parse(request.user_agent)[:vendor] == 'Microsoft'
    return 'mac' if request.os == 'Mac OSX'
    return 'ios' if request.from_ios?
    return 'android' if android?
    return 'windows-phone' if request.from_windows_phone?
    'other-os'
  end

  def css_hack_classes
    'is-' + browser_class + ' ' + 'is-' + os_class + ' ' + 'is-' + request.device_type.to_s
  end

  def page_classes
    'is-' + qualified_controller_name + ' ' + 'is-' + qualified_controller_name + '-' + controller.action_name + ' ' + 'is-' + page_category + ' ' + user_role_class
  end

  def basic_body_classes
    if page_classes.present?
      page_classes  + ' ' + css_hack_classes
    else
      css_hack_classes
    end
  end

  def body_class(options = {})
    extra_body_classes_symbol = options[:extra_body_classes_symbol] || :extra_body_classes
    qualified_controller_name = controller.controller_path.tr('/', '-')

    if content_for?(extra_body_classes_symbol)
      [basic_body_classes, content_for(extra_body_classes_symbol)].join(' ')
    else
      basic_body_classes
    end
  end

  def link_active(path)
    if qualified_controller_name.include?(path)
      'is-active'
    end
  end

  def sticky_header_class
    if body_class.include?('has-sticky-header')
      'js-sticky-header'
    end
  end

  private
    def need_remove_windows?
      Woothee.parse(request.user_agent)[:vendor] == 'Microsoft' && request.os.include?('Windows')
    end

    def android?
      request.from_android? || request.from_android_tablet?
    end
end
