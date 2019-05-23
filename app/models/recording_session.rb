class RecordingSession < ApplicationRecord


  belongs_to :engineer
  belongs_to :artist
  belongs_to :studio

scope :incomplete, -> { where(status: false)}


validates :engineer_id, presence: true, length: { minimum: 1 }
validates :artist_id, presence: true, length: { minimum: 1 }
validates :studio_id, presence: true, length: { minimum: 1 }


end
