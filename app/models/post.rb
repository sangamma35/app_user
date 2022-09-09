class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :description, presence: true, length: { minimum: 3, maximum: 300 }
belongs_to :user
has_many :comments, dependent: :destroy 
has_many :likes
end