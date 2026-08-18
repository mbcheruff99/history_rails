[SourceLink, EventLocation, EventPerson, Event, Topic, Location, Person, Resource].each(&:delete_all)
puts "data deleted"


topic = Topic.create!(
  title: "American Revolution",
  description: "Colonial patriots fought for freedom against England and won",
  start_year: 1775,
  end_year: 1783,
  image: "https://picsum.photos/200/300"
)
puts "topic created"

event = Event.create!(
  name: "Crossing the Deleware",
  start_year: 1776,
  end_year: 1776,
  date_display: "December 25-26, 1776",
  summary: "Washington crossed the delaware river to launch a surpirse attack on the British and Hessian troops.",
  image: "https://picsum.photos/200/300",
  topic: topic
)
puts "event created"

person = Person.create!(
  name: "George Washington",
  birth_year: 1732,
  death_year: 1799,
  date_display: "February 22, 1732 - December 14, 1799",
  biography: "Fought in the French and Indian War, General of the colonial troops in the Revolutionary war, first president of the Untited States",
  image: "https://picsum.photos/200/300"
)
puts "person created"

location = Location.create!(
  name: "Deleware Water Gap",
  country: "United States of America",
  continent: "North America",
  longitude: -74.8683,
  latitude: 40.2950,
  description: "Water, icy in winter",
  person_id: person.id,
  image: "https://picsum.photos/200/300"
)
puts "location created"


resource = Resource.create!(
  title: "Washinton Crossing the Delaware",
  author: "Raymond L. Stehle",
  organization: "Pennsylvania State University",
  source_type: "pdf copy of a book",
  link: "https://journals.psu.edu/phj/article/view/23022/22791",
  description: "written in 1964, about the artist that painted the famous crossing the delaware painting."
)
puts "resource created"

EventPerson.create!(
  event: event,
  person: person
)
puts "event_person association created"

EventLocation.create!(
  event: event,
  location: location
)
puts "event_location association created"

SourceLink.create!(
  resource: resource,
  linkable: location
)
puts "source_link association location created"


SourceLink.create!(
  resource: resource,
  linkable: event
)
puts "source_link association with event created"


SourceLink.create!(
  resource: resource,
  linkable: person
)
puts "source_link association with person created"