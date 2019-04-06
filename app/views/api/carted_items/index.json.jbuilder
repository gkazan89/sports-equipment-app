json.array! @carted_items.each do |carted|
  json.partial! "carted.json.jbuilder", carted: carted
end