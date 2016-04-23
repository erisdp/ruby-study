module UsersHelper
  # 蠑墓焚縺ｧ荳弱∴繧峨ｌ縺溘Θ繝ｼ繧ｶ繝ｼ縺ｮGravatar逕ｻ蜒上ｒ霑斐☆
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
