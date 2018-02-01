class Link < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  VALID_LINK_REGEX = /(^$)|(^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$)/ix
	validates :url, presence: true,
			            format: { with: VALID_LINK_REGEX }
end
