class AddColumnToResponses < ActiveRecord::Migration[5.1]
  def change
    add_column :answer_choices, :answer_choices_id, :integer
  end
end
