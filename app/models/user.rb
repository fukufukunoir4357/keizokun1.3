class User < ApplicationRecord
  has_secure_password
  validates :password,presence: true, length:{minimum: 6}
  validates :name, presence: true, length: {maximum: 255}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }
  
  has_many :s_favorites
  has_many :s_favorite_sites, through: :s_favorites, source: 'site'
  has_many :l_favorites
  has_many :l_favorite_languages, through: :l_favorites, source: 'language'
end
