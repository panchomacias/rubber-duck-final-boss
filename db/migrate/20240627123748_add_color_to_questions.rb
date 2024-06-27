class AddColorToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :color, :string
  end
end
