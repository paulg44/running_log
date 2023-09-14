class Test < ApplicationRecord

    belongs_to :user

    def self.ransackable_attributes(auth_object = nil)
        ["date", "distance", "duration", "pace", "surface", "description"]
    end
end
