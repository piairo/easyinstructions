class Instruction < ApplicationRecord
belongs_to :user
belongs_to :field
has_many :steps, dependent: :destroy
has_many :keyinfos, dependent: :destroy

validates :name, presence: true
end



