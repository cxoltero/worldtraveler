class Trip < ActiveRecord::Base
  acts_as_votable
  belongs_to :User

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  has_attached_file :image,:styles =>{ :thumb => "100x100", :medium => "200x200", :large => "600x400" },:storage => :s3,
:s3_credentials => "#{RAILS_ROOT}/config/s3.yml",:path => ":attachment/:id/:style.:extension",:bucket => 'cxolteromedia'

end
