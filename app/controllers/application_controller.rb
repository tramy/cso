class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_locale 

  def set_locale
    accept_language = request.env['HTTP_ACCEPT_LANGUAGE']
    unless accept_language.nil?
      locale_from_accept_language_header = accept_language.scan(/^[a-z]{2}/).first
      I18n.locale = locale_from_accept_language_header
    end
  end
end
