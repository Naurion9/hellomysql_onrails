class Libro < ApplicationRecord
    belongs_to :tema
    belongs_to :autor, optional: true
    validates_presence_of :titulo
    validates_numericality_of :precio, :mensaje=>"Error Message"
end
