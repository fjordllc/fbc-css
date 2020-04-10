class PagesController < HighVoltage::PagesController
  include HighVoltage::StaticPage

  layout :layout_for_page

  private

  def layout_for_page
    if params[:id] == 'reset'
      'test'
    else
      'application'
    end
  end
end
