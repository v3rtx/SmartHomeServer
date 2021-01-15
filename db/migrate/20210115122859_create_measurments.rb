class CreateMeasurments < ActiveRecord::Migration[6.1]
  def change
    create_table :measurments do |t|
      t.string :value

      t.timestamps
    end
  end
end
