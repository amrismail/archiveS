class CreateRFiles < ActiveRecord::Migration[5.0]
  def change
    create_table :r_files do |t|
      t.string :name
      t.date :date
      t.string :reporter
      t.integer :uploader
      t.string :event
      t.string :place
      t.integer :access
      t.string :URL

      t.timestamps
    end
  end
end
