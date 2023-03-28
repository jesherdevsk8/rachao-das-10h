class Player < ApplicationRecord
  has_many :soccer_matchs

  validates :email, :name, presence: true
end
