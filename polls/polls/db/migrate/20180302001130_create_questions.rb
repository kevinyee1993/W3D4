class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question_body, null: false
      t.integer :poll_id, null: false
      t.timestamps
    end
  end
end
