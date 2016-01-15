json.array!(@courses) do |course|
  json.extract! course, :id, :title, :school, :time, :description
  json.url course_url(course, format: :json)
end
