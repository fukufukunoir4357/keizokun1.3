class LFavorite < ApplicationRecord
  belongs_to :user
  belongs_to :language
end
