class CreateFakeModels < ActiveRecord::Migration[4.2]
def change
    create_table :fake_models do |t|
      t.float :fake_size, default: 0.0
      t.integer :fake_qty, default: 0
      t.date :fake_date
      t.time :fake_time

      t.timestamps
    end
  end
end
