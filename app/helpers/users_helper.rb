module UsersHelper
  def gravatar_url(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    
    "https://secure.gravatar.com/avatar/
#{gravatar_id}
?s=
#{size}
"
  end
  
  # def current_user
  #   User.find(session[:user_id])
  # end
end
