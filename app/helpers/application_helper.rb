require 'net/http'

module ApplicationHelper
  def full_title(page_title)
    base_title = "Know my band"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end   
  end

  def readable_date_from_timestamp(timestamp)
    timestamp
    #Time.at(timestamp).strftime('%d %b %Y, %I:%M%p')
  end

  # Returns the Gravatar (http://gravatar.com/) for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image = image_tag(gravatar_url, alt: user.first_name, class: "gravatar")
    if gravatar?(user)
      image
    else
      link_to image, 'http://en.gravatar.com/', :target => "_blank"
    end
  end

  def gravatar?(user)
    gravatar_check = "http://gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email.downcase)}.png?d=404"
    uri = URI.parse(gravatar_check)
    http = Net::HTTP.new(uri.host, uri.port)
    request = Net::HTTP::Get.new(uri.request_uri)
    response = http.request(request)
    if (response.code.to_i == 404)
      return false
    else
      return true
    end 
  end
end
