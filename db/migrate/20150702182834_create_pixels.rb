class CreatePixels < ActiveRecord::Migration
  def change
    create_table :pixels do |t|
    	t.string :tracking_string, null: false

      t.timestamps null: false
    end
  end
end
