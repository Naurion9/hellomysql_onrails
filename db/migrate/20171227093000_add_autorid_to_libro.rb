class AddAutoridToLibro < ActiveRecord::Migration[5.1]
  def change
    add_reference :libros, :autor, foreign_key: true
  end
end
