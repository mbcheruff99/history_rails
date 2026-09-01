require "test_helper"

class ResourcesControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/resources.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Resource.count, data.length
  end

  test "show" do
    get "/resources/#{Resource.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal [
      "id",
      "title",
      "author",
      "year",
      "organization",
      "description",
      "link",
      "created_at",
      "updated_at",
      "events",
      "people",
      "locations"
    ], data.keys
  end
  
  test "create" do
    assert_difference "Resource.count", 1 do
      post "/resources.json", params: {
        title: "test", 
        author: "test",
        year: 123,
        organization: "test",
        link: "link", 
      }
      assert_response 201
    end
  end 
  
  test "update" do
    patch "/resources/#{Resource.first.id}.json", params: {title: "testing"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "testing", data["title"]
  end
  
  test "destroy" do
    assert_difference "Resource.count", -1 do
      delete "/resources/#{Resource.first.id}.json"
      assert_response 200  
    end
  end
  
end
