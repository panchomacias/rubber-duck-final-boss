class Question < ApplicationRecord
  validates :content, :topic, presence: true

  TOPIC = ["Python", "C", "Flask", "Algorithms", "Memory"].sort

  validates :topic, inclusion: {in: TOPIC}
end
