class Photo < ActiveRecord::Base
  
  has_attached_file :photo, :styles => {:small => "100x100>"}
  
  validates_attachment_presence :photo
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
  
end
