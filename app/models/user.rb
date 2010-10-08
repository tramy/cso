class User
  # Returns true on success.
  def self.login(username, password)
    u = username.strip
    p = password.strip
    if u.empty? || p.empty?
      false
    else
      c = Net::LDAP.new({
       :host => LDAP_CONFIG[:host],
       :auth => {
         :method   => :simple,
         :username => "#{username}#{LDAP_CONFIG[:username_subfix]}",
         :password => password}
      })
      c.bind
    end
  end
end
