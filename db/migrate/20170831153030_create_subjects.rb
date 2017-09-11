class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :description
      t.references :subject_category, foreign_key: true

      t.timestamps
    end
  end
end
