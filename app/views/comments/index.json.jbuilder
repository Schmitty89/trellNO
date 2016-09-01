json.array! @comments do |coms|
  json.commenter coms.commenter
  json.body coms.body
end
