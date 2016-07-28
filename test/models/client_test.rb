require 'test_helper'

class ClientTest < ActiveSupport::TestCase
  def test_client_exists
    assert Client
  end

  test "create a new client" do
    client = Client.create!({name: "The Osbornes", email: "russell@theironyard.com" })

    assert client.persisted?
  end

  test "client can have pets" do
    client = Client.create!({name: "The Osbornes", email: "russell@theironyard.com" })

    assert_equal [], client.pets

    moose = Pet.create!(name: "Moose")
    client.pets << moose

    assert_equal [moose], client.pets
  end
end
