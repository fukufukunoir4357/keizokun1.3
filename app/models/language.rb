class Language < ApplicationRecord
  has_many :l_favorites
  has_many :user, through: :l_favorite, source: 'user'
end
