class Step < ApplicationRecord
  belongs_to :flat
  has_many :attachements
end
