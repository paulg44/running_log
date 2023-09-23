class Test < ApplicationRecord

    belongs_to :user

    # Attributes in the Test model that can be searched
    def self.ransackable_attributes(auth_object = nil)
        ["date", "distance", "duration", "pace", "surface", "description"]
    end

    # Format the duration to only show hours, minutes and seconds (currently not working as wanted)
    def formatted_duration
        duration.strftime("%H:%M:%S")
    end
end
