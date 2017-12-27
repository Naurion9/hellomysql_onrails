class Libros < ActiveRecord::Migration[5.1]
  def self.up
    create_table :libros do |t|
      t.column :titulo, :string, :limit => 32, :null => false
      t.column :precio, :float
      t.column :tema_id, :integer
      t.column :descripcion, :text
      t.column :creacion, :timestamp
    end
  end

  def self.down
    drop_table :libros
  end

end
