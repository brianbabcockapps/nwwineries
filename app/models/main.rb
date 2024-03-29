class Main < ActiveRecord::Base
  
  has_attached_file :graphic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/public/images/:style/missing.png"
  validates_attachment_content_type :graphic, content_type: /\Aimage\/.*\Z/
end
