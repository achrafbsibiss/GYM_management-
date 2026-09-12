class User < ApplicationRecord
  validates :first_name, :last_name, :brithday, :addresse, presence: true

  enum :role, { agent: 0, admin: 1 }

  def full_name
   "#{first_name} #{last_name}".upcase
  end
end
