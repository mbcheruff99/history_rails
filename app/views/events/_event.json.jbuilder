json.id event.id
json.name event.name
json.date_display event.date_display
json.start_year event.start_year
json.end_year event.end_year
json.summary event.summary
json.image event.image

json.people event.people do |person|
  json.id person.id
  json.name person.name
  json.date_display person.date_display
  json.image person.image 
  json.biography person.biography
end

json.locations event.locations do |locatiion|
  json.id location.id
  json.name locatiion.name
  json.country location.country
  json.continent locations.continent
  json.image locatiion.image
end

json.resources event.resources do |source|
  json.id source.id
  json.title source.title
  json.author source.author
  json.year source.year
  json.organization source.organization
  json.source_type source.source_type
  json.description source.description
  json.link source.link
end