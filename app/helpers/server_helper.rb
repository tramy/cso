module ServerHelper
  def url_for_user
    url_for :controller => 'user', :action => session[:username]
  end
  
  # Extract username from OpenID identity
  # "http://.../user/blah" => "blah"
  def username_from_openid_identity(identity)
    identity.split('/').last
  end
end
