json.array!(@globalinfos) do |globalinfo|
  json.extract! globalinfo, :id, :title, :publisher, :content
  json.url globalinfo_url(globalinfo, format: :json)
end
