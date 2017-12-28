class TemaController < ApplicationController

    layout 'standard'

    def list
        @temas = Tema.all
    end

    def show
        @tema = Tema.find(params[:id])
    end

    def new
        @tema = Tema.new
    end

    def edit
        @tema = Tema.find(params[:id])
    end

    def create
        @tema = Tema.new(params.permit(:name))
        
        if @tema.save
            redirect_to :action => 'list'
        else
            render :action => 'new'
        end
    end

    def update 
        @tema = Tema.find(params[:id])

        if @tema.update_attributes(params.require(:tema).permit(:name))
            flash[:notice] = "Modificado con éxito"
            redirect_to :action => 'show', :id => @tema
        else
            flash[:error] = "No se ha podido modificar. Pruebe de nuevo."
            render :action => 'edit'
        end
    end

    def delete
        Tema.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

end