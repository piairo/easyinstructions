class Flat < ApplicationRecord
belongs_to :user
has_many :arrivals, dependent: :destroy

validates :name, uniqueness: true, presence: true
validates :address, presence: true
end


