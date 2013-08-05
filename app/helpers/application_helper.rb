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
end
