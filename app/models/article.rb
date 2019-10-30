class Article < ApplicationRecord
  has_many :comments,dependent: :destroy
  validates :title,presence: true,
            length: {minimum: 5},
            uniqueness: true
end

# err = Article.new
# if err.errors.size >0
#     puts "error"
# end