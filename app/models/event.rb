class Event < ActiveRecord::Base
  belongs_to :user
  has_many :invitations
  has_many :users, through: :invitations

  def start_time #start time getter
    timestamp = self[:start_time]
    Time.at(timestamp).strftime('%d %b %Y, %I:%M%p')
  end

  def start_time=(datetime_string) #start time setter
    self[:start_time] = DateTime.parse(datetime_string).to_i
  end

  def end_time #end time getter
    timestamp = self[:end_time]
    Time.at(timestamp).strftime('%d %b %Y, %I:%M%p')
  end

  def end_time=(datetime_string) #end time setter
    self[:end_time] = DateTime.parse(datetime_string).to_i
  end

#  def user #user getter
#    user_id = self[:user_id]
#    user = User.find(user_id)
#  end

#  def user=(user) #user setter
#    self[:user_id] = user.id
#  end
end
