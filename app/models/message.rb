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

    def self.find_by_user(username)
        #get the user object from the database
        user = User.find_by(username: username)
        # return the list of messages from a certain user
        # if user
        #     return self.where(user: user)
        # else
        #     return {error: "user not fount"}
        # end
        return self.where(user: user)
    end

end
