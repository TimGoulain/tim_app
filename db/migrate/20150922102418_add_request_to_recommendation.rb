class AddRequestToRecommendation < ActiveRecord::Migration
  def change
    add_column :recommendations, :recipient_email, :string
    add_column :recommendations, :authentication_token, :string
    add_reference :recommendations, :job, index: true
  end
end
