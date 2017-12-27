class Temas < ActiveRecord::Migration[5.1]
  def self.up
    create_table :temas do |t|
      t.column :name, :string
    end

    Tema.create :name => "Física"
    Tema.create :name => "Matemáticas"
    Tema.create :name => "Química"
    Tema.create :name => "Psicología"
    Tema.create :name => "Geografía"
  end

  def self.down
    drop_table :temas
  end
end
