# encoding: utf-8
class Offer < ActiveRecord::Base
  
  # Associations
  
  belongs_to :employer
  accepts_nested_attributes_for :employer
  belongs_to :sector
  belongs_to :created_by, class_name: 'User'
  
  # Instance methods

  delegate :city, :name, :location, :contact_point, to: :employer, prefix: false, allow_nil: true
  delegate :code, to: :sector, prefix: false, allow_nil: true

end
