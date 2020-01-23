class Keyinfo < ApplicationRecord
  belongs_to :instruction
  validates :instruction_id, uniqueness: true, presence: true

end
