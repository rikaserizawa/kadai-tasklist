module MembersHelper
  def gravatar_url(member, options = { size: 30 })
    gravatar_id = Digest::MD5::hexdigest(member.profile)
    size = options[:size]
    "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  end
end
