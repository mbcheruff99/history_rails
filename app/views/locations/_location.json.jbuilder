json.id location.id
json.name locatiion.name
json.country location.country
json.continent locations.continent
json.longitude locatiion.longitude
json.latitude locatiion.latitude
json.image locatiion.image

json.events locatiion.events do |event|
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