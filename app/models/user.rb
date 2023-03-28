class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :email, uniqueness: true, format: {
    with: /\A^[a-z0-9._]+@[a-z0-9]+\.[a-z]{2,3}+(\.[a-z]{2,3})?(\.[a-z]{2})?$\z/,
    message: 'must be a valid email address'
  }

  enum profile: { admin: 0, user: 1 }
end
