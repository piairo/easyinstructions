class Keyinfo < ApplicationRecord
  belongs_to :flat
  validates :flat_id, uniqueness: true, presence: true

end
