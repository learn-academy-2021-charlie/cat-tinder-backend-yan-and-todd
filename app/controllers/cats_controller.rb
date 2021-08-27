class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end

    def create
        cat = Cat.create(cat_params)
        if cat.valid?
            render json: cat
        else
            render json: cat.errors, status: 422
        end
    end

    def update
        # find the cat
        cat = Cat.find(params[:id])
        # update the cat
        cat.update(cat_params)
        # render json
        render json: cat
    end

    def destroy 
        # find the cat
        cat = Cat.find(params[:id])
        # delete the cat
        cat.destroy
        render json: cat

    end

    private
    def cat_params
        params.require(:cat).permit(:name, :age, :enjoys)
    end

end

