class Autor < ApplicationRecord
    has_many :libros, dependent: :destroy

    validates_presence_of :name

end
