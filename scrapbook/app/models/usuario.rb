class Usuario < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 	devise :omniauthable, omniauth_providers: [:google_auth2]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :nome, :email, :password, :password_confirmation, :remember_me

  has_many :albuns, :fotos
end
