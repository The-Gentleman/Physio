class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :diagnosis
      t.string :exercise
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :office, null: false, foreign_key: true

      t.timestamps
    end
  end
end
