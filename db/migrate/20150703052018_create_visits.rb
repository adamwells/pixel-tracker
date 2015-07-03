class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
    	t.integer :pixel_id, null: false
    	t.string :ip_address, null: false

      t.timestamps null: false
    end
  end
end
