class Flat < ApplicationRecord
belongs_to :user
has_many :arrivals, dependent: :destroy
has_many :keyinfos, dependent: :destroy

validates :name, uniqueness: true, presence: true
end


