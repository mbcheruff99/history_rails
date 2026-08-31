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

  # test "show" do
  #   get "/show/#{Location.first.id}.json"
  #   assert_response 200

  #   data = JSON.parse(response.body)
  #   assert_equal [
  #     "id",
  #     country, 
  #     continent,
  #     longitude,
  #     latitude,
  #     image,
  #     created_at,
  #     updated_at,
  #     events.
  #     locations,
  #     resources
  #   ]
    # assert equal [list the keys], data.keys
  # end
 
end
