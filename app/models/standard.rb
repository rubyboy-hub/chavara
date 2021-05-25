class Standard < ApplicationRecord
    has_many :subjects 
    has_many :users
end
