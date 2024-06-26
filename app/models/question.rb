class Question < ApplicationRecord
  validates :content, :topic, presence: true
end
