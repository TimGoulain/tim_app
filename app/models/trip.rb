class Trip < ActiveRecord::Base
  
  # Associations
  
  belongs_to :user
  has_many :recommendations
end
