json.array! @boards do |b|
  json.project b.project
  json.id b.id
end
