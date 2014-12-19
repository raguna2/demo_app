json.array!(@micropost1s) do |micropost1|
  json.extract! micropost1, :id, :content, :user_id
  json.url micropost1_url(micropost1, format: :json)
end
