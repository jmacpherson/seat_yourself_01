class User < ActiveRecord::Base
  ROLES = %w(customer owner)
  authenticates_with_sorcery!

  validates :password, confirmation: true
end
