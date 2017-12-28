class AutorController < ApplicationController

    layout 'standard'

    def list
        @autors = Autor.all
    end

    def show
        @autor = Autor.find(params[:id])
    end

    def new
        @autor = Autor.new
    end

    def create
        @autor = Autor.new(autor_params)
        
        if @autor.save
            redirect_to :action => 'list'
        else
            render :action => 'new'
        end
    end    
    
    def autor_params
        params.require(:autor).permit(:name, :pais)
    end

    def edit
        @autor = Autor.find(params[:id])
    end

    def update
        @autor = Autor.find(params[:id])

        if @autor.update_attributes(autor_params)
            flash[:notice] = "Modificado con éxito"
            redirect_to :action => 'show', :id => @autor
        else
            flash[:error] = "No se ha podido modificar. Pruebe de nuevo."
            render :action => 'edit'
        end
    end
    
    def delete
        Autor.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

end
