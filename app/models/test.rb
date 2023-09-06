class Test < ApplicationRecord

    def self.ransackable_attributes(auth_object = nil)
        ["date", "distance", "duration", "pace", "surface", "description"]
    end
end
