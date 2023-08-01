class User < ApplicationRecord
    has_many :posts, dependent: :destroy #creating the association, users can have multiple posts and delete them
end
