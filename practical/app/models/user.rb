class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :email, format: { with: /\A[^@\s]+@[^@\s]+\z/ }, presence: true
  # validates :first_name ,presence: true
  # validates :last_name ,presence: true

  validates_presence_of :first_name, :last_name ,:email
  validates_presence_of :password, :on => :create
  validates_length_of :password, :minimum => 6 , :on => :create
  validates_confirmation_of :password , :on => :create
  validates_uniqueness_of :email ,:on => :create

  has_many :likes, dependent: :destroy
  has_one_attached:image
  has_many :posts
  has_many :comments

end
