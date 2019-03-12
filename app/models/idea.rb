class Idea < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true

  belogs_to :user
end
