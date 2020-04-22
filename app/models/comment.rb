class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  belongs_to :author, polymorphic: true

  validates :text, :commentable, :author, presence: true
end
