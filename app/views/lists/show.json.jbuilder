json.title @list.title
json.order @list.order
json.cards @list.cards do |c|
  json.body c.body
end
