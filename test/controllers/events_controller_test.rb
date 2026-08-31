require "test_helper"

class EventsControllerTest < ActionDispatch::IntegrationTest

# call the route .JSON
# data = JSON.parse(response.body)
# assert_response 200

  test "index" do
    get "/events.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Event.count, data.length
  end

  test "show" do
    get "/events/#{Event.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal [
      "id", 
      "name", 
      "date_display", 
      "start_year", 
      "end_year", 
      "summary", 
      "image", 
      "created_at", 
      "updated_at", 
      "people", 
      "locations", 
      "resources"
    ], data.keys
  end
  
  test "create" do
    assert_difference "Event.count", 1 do
      post "/events.json", params: { 
        name: "test", 
        date_display: "123-1230", 
        start_year: 1234,
        end_year: 1234,
        summary: "stuff",
        image: "link",
        topic_id: topics(:one).id
      }
      assert_response 201
    end    
  end

  test "update" do
    event = Event.first
    patch "/events/#{Event.first.id}.json", params: { name: "test" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "test", data["name"]
  end
  
  test "destroy" do
    assert_difference "Event.count", -1 do
      delete "/events/#{Event.first.id}.json" 
      assert_response 200     
    end
  end
end
