class Property < ActiveRecord::Base 
    belongs_to :landlord
    has_one :tenant
end 