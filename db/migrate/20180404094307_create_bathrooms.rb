class CreateBathrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :bathrooms do |t|
      t.string :location
      t.boolean :bidet, default: false
      t.string :gender
      t.string :size
      t.boolean :heated, default: false
      t.boolean :squatter, default: true
      t.boolean :tp, default: false

      t.timestamps
    end
  end
end
