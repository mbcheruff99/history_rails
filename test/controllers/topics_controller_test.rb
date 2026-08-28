require "test_helper"

class TopicsControllerTest < ActionDispatch::IntegrationTest

  test "index" do
    get "/topics.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Topic.count, data.length
  end

  test "show" do 
    get "/topics/#{Topic.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "title", "start_year", "end_year", "description", "image", "updated_at", "events"], data.keys
  end
  
  test "create" do
    assert_difference "Topic.count", 1 do
      post "/topics.json", params: { title: "test", start_year: 1, end_year: 1, description: "stuff", image: "link"}
      assert_response 200
    end
  end

  test "update" do
    topic = Topic.first
    patch "/topics/#{Topic.first.id}.json", params: { title: "test"}
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "test", data["title"]
  end
  
  test "destroy" do 
    assert_difference "Topic.count", -1 do
      delete "/topics/#{Topic.first.id}"
      assert_response 200
    end
  end
  
end
