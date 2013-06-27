class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.text :q1

      t.timestamps
    end
  end
end
