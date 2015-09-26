class Rating < ActiveRecord::Base
  belongs_to :recommendation
  belongs_to :job
end
