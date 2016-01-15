json.array!(@users) do |user|
  json.extract! user, :id, :email, :nickname, :level, :score
  json.url user_url(user, format: :json)
end
