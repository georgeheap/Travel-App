class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # devise :omniauthable, :omniauth_providers => [:facebook]
  validates_presence_of :username
  validates_uniqueness_of :username

  has_many :trips
  has_many :tours, through: :user_tours

  # has_many :messages, dependent: :destroy
  # has_many :sent_messages, :foreign_key => :sender, :class_name => 'Message'
  # has_many :received_messages, :foreign_key => :recipient, :class_name => 'Message'

  include ImageUploader[:image] # adds an `image` virtual attribute

end
