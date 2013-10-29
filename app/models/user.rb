class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :dois
  has_many :comments

  validates_format_of :email, :with => /\A[\w]+@[\w]+\.[\w]{2,6}\z/
  validates_format_of :password, :with => /\A.*(?=.{7,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[^a-zA-Z0-9]).*\z/,
  					  :message => "Password must contain at least 1 lowercase, uppercase, number, and a special character."
end
