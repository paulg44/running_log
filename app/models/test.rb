class Test < ApplicationRecord

    belongs_to :user

    def self.ransackable_attributes(auth_object = nil)
        ["date", "distance", "duration", "pace", "surface", "description"]
    end

    # Format the duration to only show hours, minutes and seconds 
    def formatted_duration
        duration.strftime("%H:%M:%S")
    end
end
