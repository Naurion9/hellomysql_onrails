class TemaController < ApplicationController

    layout 'standard'

    def list
        @temas = Tema.all
    end

    def show
        @tema = Tema.find(params[:id])
    end

    def new
        
    end

end