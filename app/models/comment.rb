class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :link
  belongs_to :commentable, polymorphic: true
  has_many :comments, as: :commentable, dependent: :destroy
end
