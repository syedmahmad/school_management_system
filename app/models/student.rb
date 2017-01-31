class Student < ApplicationRecord
  validates :mobile, :presence => {:message => 'Please enter valid phone number!'},
                     :numericality => true,
                     :uniqueness => true,
                     :length => { :minimum => 10, :maximum => 15 }

end
