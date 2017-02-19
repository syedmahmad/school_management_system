class Teacher < ApplicationRecord
  validates :mobile, :presence => {:message => 'Please enter valid phone number!'},
                     :numericality => true,
                     :length => { :minimum => 10, :maximum => 15 }

  belongs_to :student_class
  has_many :students, dependent: :destroy
end
