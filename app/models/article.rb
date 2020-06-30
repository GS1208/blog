class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: {minimum: 5, maximum: 10}
    validates :descripton, presence: true
end