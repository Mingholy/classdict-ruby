json.array!(@suggest) do |course|
  json.extract! course,  :title, :time, :school
end
