class Player < ApplicationRecord
  validates :email, :name, presence: true
end
