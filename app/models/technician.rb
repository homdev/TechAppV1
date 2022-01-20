# frozen_string_literal: true

class Technician < ActiveRecord::Base
 
  extend Devise::Models #added this line to extend devise model
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
         include DeviseTokenAuth::Concerns::User

end
