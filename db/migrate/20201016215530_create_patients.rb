class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :diagnosis
      t.integer :user_id
      t.integer :office_id

      t.timestamps
    end
  end
end
