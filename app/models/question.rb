class Question < ApplicationRecord
  before_save :assign_color

  validates :content, :topic, presence: true

  def assign_color
    topic_colors = {
      'Python' => '#FF5733',
      'C' => '#33FF57',
      'Flask' => '#3357FF',
      'Memory' => '#FF33A5',
      'Algorithms' => '#FF5733'
      # Añade más tópicos y colores aquí
    }

    self.color = topic_colors[topic] || '#000000' # Color por defecto si no se encuentra el tópico
  end
end
