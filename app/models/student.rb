class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :course_students
  has_many :courses, through: :course_students

  has_many :student_categories
  has_many :categories, through: :student_categories

end
