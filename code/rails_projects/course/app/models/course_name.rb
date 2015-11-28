class CourseName < ActiveRecord::Base
  validates_presence_of :teacher_name
  validates_presence_of :title
  validates_presence_of :course_name
  validates_presence_of :hours
  validates_presence_of :quantity
  validates :hours, length: { in: 0..7 }
  validates :quantity, length: { in: 0..45 }

 

end
