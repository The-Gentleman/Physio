class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
