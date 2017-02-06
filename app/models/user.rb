
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # devise :omniauthable, :omniauth_providers => [:facebook]
  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :trips
  has_many :tours, through: :user_tours

  include ImageUploader[:image] # adds an `image` virtual attribute

end
