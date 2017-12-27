class CreateAutors < ActiveRecord::Migration[5.1]
  def self.up
    create_table :autors do |t|
      t.column :name, :string, :null => false
      t.column :pais, :string

      t.timestamps
    end
  end

  def self.down
    drop_table :autors
  end
end
