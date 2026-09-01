require "test_helper"

class LocationsControllerTest < ActionDispatch::IntegrationTest
  # call the route .json
  # assert_difference/assert_equal (create another function when need it to create or update)
  # assert_response 200/201
  # data = JSON.pars(repsonse.body)

  test "index" do
    get "/locations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Location.count, data.length
  end

  test "show" do
    get "/locations/#{Location.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal [
      "id",
      "name",
      "country", 
      "continent",
      "longitude",
      "latitude",
      "image",
      "created_at",
      "updated_at",
      "events",
      "resources",
      "people"
    ], data.keys
  end
 
  test "create" do
    assert_difference "Location.count", 1 do
      post "/locations.json", params: {
        name: "test",
        country: "test",
        continent: "test",
        longitude: 123,
        latitude: 123,
        image: "link",
      }
      assert_response 201
    end
  end  
  
  test "update" do
    patch "/locations/#{Location.first.id}.json", params: { name: "testing"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "testing", data["name"]
  end

  test "destroy" do
    assert_difference "Location.count", -1 do
      delete "/locations/#{Location.first.id}.json"
      assert_response 200  
    end
  end
  
end
