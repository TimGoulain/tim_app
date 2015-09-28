class Trip < ActiveRecord::Base
  
  # Associations
  
  belongs_to :user
  has_many :recommendations
  
  # Instance methods
  
  def to_s 
    name
  end
  
end
