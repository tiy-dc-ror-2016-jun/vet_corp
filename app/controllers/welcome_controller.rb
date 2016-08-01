#
# create_table "visits", force: :cascade do |t|
#   t.integer  "pet_id"
#   t.date     "visited_on"
#   t.float    "weight_in_kg"
#   t.text     "notes"
#   t.datetime "created_at",   null: false
#   t.datetime "updated_at",   null: false
#   t.string   "reason"
# end

class WelcomeController < ApplicationController
  def index
    @visits_today = Visit.where(visited_on: Date.today)
  end
end
