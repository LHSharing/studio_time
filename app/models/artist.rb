class Artist < ApplicationRecord

    has_many :recording_sessions #adds methods to my model
    has_many :engineers, through: :recording_session
    has_many :studios, through: :recording_session

validates :name, presence: true, length: { minimum: 1 }
validates :name, uniqueness: true


end
