class Message < ApplicationRecord
    belongs_to :user
    validates_presence_of :text

    def transform_message 
        return {
            id: self.id,
            text: self.text,
            posted: self.updated_at,
            username: self.user.username
        }
    end
end
