class Image < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  belongs_to :album
  has_attached_file :image_file, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/default.jpg"
#  validates_attachment :image_file, :presence => true,
#  :content_type => { :content_type => "image/pjpg" },
#  :size => { :in => 0..10.kilobytes }

  private
    def person_params
      params.require(:person).permit(:image_file)
    end
end
