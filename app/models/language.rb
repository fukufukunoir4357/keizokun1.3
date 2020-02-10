class Language < ApplicationRecord
  has_many :lfavorites
  has_one :user, through: :lfavorite
end
