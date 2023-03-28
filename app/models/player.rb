class Player < ApplicationRecord
  has_many :soccer_matchs

  validates :email, :name, presence: true
  validates :email, uniqueness: true, format: {
    with: /\A^[a-z0-9._]+@[a-z0-9]+\.[a-z]{2,3}+(\.[a-z]{2,3})?(\.[a-z]{2})?$\z/,
    message: 'must be a valid email address'
  }
end
