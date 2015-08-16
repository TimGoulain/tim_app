class Offer < ActiveRecord::Base
  belongs_to :employer
  accepts_nested_attributes_for :employer
  belongs_to :sector
  belongs_to :created_by, class_name: 'User'
  
end
