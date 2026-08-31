json.id person.id
json.name person.name
json.date_display person.date_display
json.birth_year person.birth_year
json.death_year person.death_year
json.image person.image 
json.biography person.biography
json.created_at person.created_at
json.updated_at person.updated_at

json.events person.events do |event|
  json.id event.id
  json.name event.name
  json.date_display event.date_display
  json.summary event.summary
  json.image event.image
end

json.locations person.locations do |location|
  json.id location.id
  json.name location.name
  json.country location.country
  json.continent location.continent
  json.image location.image
end

json.resources person.resources do |source|
  json.id source.id
  json.title source.title
  json.author source.author
  json.year source.year
  json.organization source.organization
  json.source_type source.source_type
  json.description source.description
  json.link source.link
end