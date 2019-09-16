class Flat < ApplicationRecord
belongs_to :user
has_many :arrivals

validates :name, uniqueness: true, presence: true
validates :address, presence: true
end


