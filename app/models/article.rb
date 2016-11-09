class Article < ActiveRecord::Base
  belongs_to :category
  validates :category, presence: true
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
