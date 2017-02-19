class Attendance < ApplicationRecord
  has_many :students, dependent: :destroy
end
