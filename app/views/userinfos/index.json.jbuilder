json.array!(@userinfos) do |userinfo|
  json.extract! userinfo, :id, :title, :user_id, :publisher, :content
  json.url userinfo_url(userinfo, format: :json)
end
