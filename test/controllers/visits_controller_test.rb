require 'test_helper'

class VisitsControllerTest < ActionController::TestCase
    # /pets/:pet_id/views/new
    def test_can_show_view_to_create_new_vists
        @pet = Pet.last

        response = get :new, pet_id: @pet.id

        assert_response :success
    end

    def test_can_create_a_new_visit_for_a_pet
        @pet = Pet.last
        prev_count = @pet.visits.count

        response = post :create, pet_id: @pet.id,
                                 visit: {
                                     weight_in_kg: 12,
                                     visted_on: Date.today,
                                     notes: 'They were wearing pink hats.'
                                 }

        assert_equal prev_count + 1, @pet.visits.count
    end
end
