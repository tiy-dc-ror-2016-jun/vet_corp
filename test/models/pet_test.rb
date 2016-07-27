require 'test_helper'

class PetTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "can be persisted" do
    moose = Pet.create!(name: "Moose")
    assert moose.persisted?
  end

  def test_can_be_update
    assert true
  end
end
