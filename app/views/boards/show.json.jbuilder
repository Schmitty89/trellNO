json.project @board.project
json.id @board.id
json.lists @board.lists do |l|
  json.title l.title
  json.order l.order
end
