class Trip < ActiveRecord::Base
  acts_as_votable
  belongs_to :User

  has_attached_file :image, styles: {medium: "500 x 500>"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
