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

  def self.search(search)
    if search.present?
      joins(:sector, :employer)
      .where('position LIKE :q OR sectors.code LIKE :q OR employers.city LIKE :q OR employers.name LIKE :q OR employers.location LIKE :q', q:"%#{search}%")
    else
      where(true)
    end
  end

end
