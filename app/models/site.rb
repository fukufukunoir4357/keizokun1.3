class Site < ApplicationRecord
  has_many :s_favorites
  has_many :s_favorite_users, through: :s_favorite, source: 'user'
end
