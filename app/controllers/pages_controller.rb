class PagesController < ApplicationController
  include HighVoltage::StaticPage

  before_filter :authenticate
  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
    when 'index'
      'application'
    else
      'application'
    end
  end
end
