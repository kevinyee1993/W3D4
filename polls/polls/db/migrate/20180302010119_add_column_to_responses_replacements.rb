class AddColumnToResponsesReplacements < ActiveRecord::Migration[5.1]
  def change

    remove_column :answer_choices, :answer_choices_id
    add_column :responses, :answer_choices_id, :integer
  end
end
