json.id topic.id
json.title topic.title
json.start_year topic.start_year
json.end_year topic.end_year
json.description topic.description
json.image topic.image

json.events topic.events do |event|
  json.id event.id
  json.name event.name
  json.date_display event.date_display
  json.summary event.summary
  json.image event.image
end
