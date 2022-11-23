class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :answer, null: false
      t.string :label, null: false

      t.timestamps
    end
  end
end
