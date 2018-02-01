class User < ApplicationRecord
	has_many :comments, dependent: :destroy
	has_many :links, dependent: :destroy
	validates :name, presence: true
end
