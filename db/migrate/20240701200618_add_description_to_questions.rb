class AddDescriptionToQuestions < ActiveRecord::Migration[7.1]
  def change
    add_column :questions, :description, :string
  end
end
