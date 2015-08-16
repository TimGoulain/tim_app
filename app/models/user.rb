# encoding: utf-8
class User < ActiveRecord::Base
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Associations
  has_many :jobs 
  belongs_to :employer
  has_many :offers, foreign_key: "created_by_id"
  
  # Validations

  VALID_EMAIL_REGEX = /\A[\w+\-_.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
    format: { with: VALID_EMAIL_REGEX },
    uniqueness: { case_sensitive: false }

  # Callbacks
  before_create :set_user_name
  
  # Instance methods
  
  def to_s
    name
  end
  
  protected
  
  def set_user_name
    if name.blank? && email.present?
      self.name = email.split('@').first.capitalize
    end
  end
   
end
