class Teacher < ApplicationRecord
  def course_load_humanize
    course_load.strftime('%I:%M')
  end
end
