class User < ActiveRecord::Base
  ROLES = %w(customer owner)
  has_many :restaurants
  has_many :reservations
  authenticates_with_sorcery!

  validates :password, confirmation: true
  validates_presence_of :email
  validates_uniqueness_of :email

  

end