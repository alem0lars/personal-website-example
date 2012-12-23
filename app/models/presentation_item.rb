class PresentationItem < ActiveRecord::Base
  attr_accessible :name, :image

  validates :name, :presence => true, :uniqueness => true, :length => { :minimum => 4 }

  has_attached_file :image, :styles => { :small => '360x240>' },
      :url => '/assets/images/presentation_items/:id/:style/:basename.:extension',
      :path => ':rails_root/public/assets/images/presentation_items/:id/:style/:basename.:extension'

  validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 4.megabytes
  validates_attachment_content_type :image, :content_type => [ 'image/png', 'image/jpeg' ]

end
