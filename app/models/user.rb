class User < ApplicationRecord
  has_many :flats, foreign_key: "owner_id", dependent: :destroy
end
