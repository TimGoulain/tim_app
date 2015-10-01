class Trip < ActiveRecord::Base
  
  # Associations
  
  belongs_to :user
  
  # Instance methods
  
  def to_s 
    name
  end
  
  def self.search(search)
    if search.present?
      where('name LIKE :q OR departure_point LIKE :q OR arrival_point LIKE :q', q:"%#{search}%")
    else
      where(true)
    end
  end
end
