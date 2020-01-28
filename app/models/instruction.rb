class Instruction < ApplicationRecord
belongs_to :user
has_many :steps, dependent: :destroy
has_many :keyinfos, dependent: :destroy

validates :name, presence: true
end



