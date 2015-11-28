json.array!(@course_names) do |course_name|
  json.extract! course_name, :id, :teacher_name, :title, :courser_name, :hours, :quntity
  json.url course_name_url(course_name, format: :json)
end
