class Pet < ActiveRecord::Base
  has_many :visits
end
