class RemoveColumnFromAnswerChoice < ActiveRecord::Migration[5.1]
  def change
    remove_column :answer_choices, :user
  end
end
