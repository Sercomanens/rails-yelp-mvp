class Restaurant < ApplicationRecord
  has_many :reviews, dependant:destroy
end
