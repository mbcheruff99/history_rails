json.id location.id
json.name location.name
json.country location.country
json.continent location.continent
json.longitude location.longitude
json.latitude location.latitude
json.image location.image
json.created_at location.created_at
json.updated_at location.updated_at

json.events location.events do |event|
  json.id event.id
  json.name event.name
  json.date_display event.date_display
  json.summary event.summary
  json.image event.image
end

json.resources location.resources do |source|
  json.id source.id
  json.title source.title
  json.author source.author
  json.year source.year
  json.organization source.organization
  json.source_type source.source_type
  json.description source.description
  json.link source.link
end 

json.people location.people do |person|
  json.id person.id
  json.name person.name
  json.date_display person.date_display
  json.image person.image 
  json.biography person.biography
end