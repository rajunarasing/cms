class CoursesUsers < ActiveRecord::Base
  attr_accessible :course_id, :user_id
end
