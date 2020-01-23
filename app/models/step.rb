class Step < ApplicationRecord
  belongs_to :instruction
  has_many :attachements
  mount_uploader :photo, PhotoUploader
  ACTIONS = ['01', '02', '03', '04','05', '06', '07', '08','09', '10', '11', '12','13', '14', '15']
  # validates :position, uniqueness: { scope: :instruction_id }, presence: true
end
