class PagesController < ApplicationController
  def index
    @events = Event.where("start_time >= ? AND status = ?", Time.now.to_i, 'Scheduled').order('start_time ASC').limit(5)
  end

  def about_us
  end

  def coming_soon
  end
  
  def privacy
  end

  def terms
  end
end
