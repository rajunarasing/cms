class Course < ActiveRecord::Base
  attr_accessible :course_fee, :course_name
  has_and_belongs_to_many :users
end
