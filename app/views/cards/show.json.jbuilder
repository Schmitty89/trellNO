json.body @card.body
json.comments @card.comments.limit(5) do |com|
  json.commenter com.commenter
  json.body com.body
end
