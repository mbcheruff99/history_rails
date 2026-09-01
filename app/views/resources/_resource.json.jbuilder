json.id resource.id
json.title resource.title
json.author resource.author
json.year resource.year
json.organization resource.organization
json.description resource.description
json.source_type resource.source_type
json.link resource.link
json.created_at resource.created_at
json.updated_at resource.updated_at

json.events resource.events do |event|
  json.id event.id
  json.name event.name
  json.date_display event.date_display
  json.summary event.summary
  json.image event.image
end

json.people resource.people do |person|
  json.id person.id
  json.name person.name
  json.date_display person.date_display
  json.image person.image 
  json.biography person.biography
end

json.locations resource.locations do |location|
  json.id location.id
  json.name location.name
  json.country location.country
  json.continent location.continent
  json.image location.image
end
