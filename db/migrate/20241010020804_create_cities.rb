class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities, id: :uuid do |t|
      t.string :name
      t.uuid :state_id, foreign_key: true, index: true

      t.timestamps
    end
  end
end
