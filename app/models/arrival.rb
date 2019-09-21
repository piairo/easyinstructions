class Arrival < ApplicationRecord
  belongs_to :flat
  has_many :attachements
  ACTIONS = ['01', '02', '03', '04','05', '06', '07', '08','09', '10', '11', '12','13', '14', '15']
  validates :number, uniqueness: { scope: :flat_id }
end
