class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string   :name
      t.float    :number
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :client_id
    end
    add_index :projects, [:client_id]
  end

  def self.down
    drop_table :projects
  end
end
