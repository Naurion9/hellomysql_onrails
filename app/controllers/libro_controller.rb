class LibroController < ApplicationController

layout 'standard'

    def list
        @libros = Libro.all
    end

    def show
        @libro = Libro.find(params[:id])
    end

    def new
        @libro = Libro.new
        @temas = Tema.all
        @autors = Autor.all
    end

    def create
        @libro = Libro.new(libro_params)

        if @libro.save
            redirect_to :action => 'list'
        else
            @temas = Tema.all
            @autors = Autor.all
            render :action => 'new'
        end
    end

    def libro_params
        params.require(:libro).permit(:titulo, :autor_id, :precio, :tema_id, :descripcion)
    end

    def edit
        @libro = Libro.find(params[:id])
        @temas = Tema.all
        @autors = Autor.all
    end

    def update
        @libro = Libro.find(params[:id])

        if @libro.update(libro_params)
            redirect_to :action => 'show', :id => @libro
        else
            @temas = Tema.all
            @autors = Autor.all
            render :action => 'edit'
        end

    end

    def delete
        Libro.find(params[:id]).destroy
        redirect_to :action => 'list'
    end

end
