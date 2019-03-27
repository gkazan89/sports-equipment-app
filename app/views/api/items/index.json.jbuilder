json.array! @items.each do |item|
  json.id item.id
  json.name item.name
  json.sport item.sport
  json.price item.price
end