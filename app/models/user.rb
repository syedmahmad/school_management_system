class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 validates :mobile_number, :presence => {:message => 'Please enter valid phone number!'},
           :numericality => true,
           :uniqueness => true,
           :length => { :minimum => 10, :maximum => 15 }, if: Proc.new{|user| !user.oauth_account.present?}
end
