class StudentClass < ApplicationRecord
  has_many :students, dependent: :destroy
end
