class Field < ApplicationRecord
has_many :instructions
mount_uploader :photo, PhotoUploader
  CATEGORIES = ['recipes', 'direction', 'manuals', 'medication','other']
  validates :photo , presence: true
end
