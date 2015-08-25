# encoding: utf-8
class Sector < ActiveRecord::Base
  
  # Associations
  has_many :jobs
  has_attached_file :image, styles: { icon: "32x32", small: "64x64", med: "100x100" }
  
    # Validations
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  
  # Callbacks

  # Instance methods
  def to_s
    code  
  end
end
