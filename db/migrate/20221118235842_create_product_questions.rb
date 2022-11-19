class CreateProductQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :product_questions do |t|
      t.references :product, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
