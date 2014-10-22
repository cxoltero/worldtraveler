class Trip < ActiveRecord::Base
  belongs_to :User

  has_attached_file :image, styles: {medium: "300 x 300>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
