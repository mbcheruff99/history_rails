require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest

  test "index" do 
    get "/people.json"
    assert_response 200
    
    data = JSON.parse(response.body)
    assert_equal Person.count, data.length
  end
  
  test "show" do
    get "/people/#{Person.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal [
      "id",
      "name",
      "date_display",
      "birth_year",
      "death_year",
      "image",
      "biography",
      "created_at",
      "updated_at",
      "events",
      "locations",
      "resources"
    ], data.keys
  end

  test "create" do 
    assert_difference "Person.count", 1 do
      post "/people.json", params: { 
        name: "test",
        date_display: "123-123",
        birth_year: 123,
        death_year: 123,
        image: "link",
        biography: "test"
      }
      assert_response 201
    end
  end

  test "update" do 
    patch "/people/#{Person.first.id}.json", params: { name: "testing"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "testing", data["name"]
  end

  test "destroy" do
    assert_difference "Person.count", -1 do
      delete "/people/#{Person.first.id}.json"
      assert_response 200  
    end
  end
  
  
end
