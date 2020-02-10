class Site < ApplicationRecord
  has_many :sfavorites
  has_one :user, through: :sfavorite
end
