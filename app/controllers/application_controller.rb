class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale 

  def set_locale
    locale_from_accept_language_header = request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
    I18n.locale = locale_from_accept_language_header
  end
end
