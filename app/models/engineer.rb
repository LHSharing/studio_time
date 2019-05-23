class Engineer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

   devise :database_authenticatable, :registerable,
         #:recoverable, :rememberable, :validatable
         # devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:github]
  # devise :omniauthable

  has_many :recording_sessions # adds methods to my model
  # adds methods to my model
  has_many :artists, through: :recording_sessions
  has_many :studios, through: :recording_sessions

end
