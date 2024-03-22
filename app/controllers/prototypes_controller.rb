class PrototypesController < ApplicationController

def index
  @prototypes = Prototype.all

end

def new
  @prototype = Prototype.new

end


def create
  @prototype = Prototype.create(prototype_params)
  if @prototype.save
     redirect_to root_path
  else
    render :new, status: :unprocessable_entity
  end

end

def show
@prototype = Prototype.find(params[:id])

end

def edit
  @prototype = Prototype.find(params[:id])

end

def update
  @prototype = Prototype.find(params[:id])
  if @prototype.update(prototype_params)
    redirect_to prototype_path(@prototype)
  else
   render :edit, status: :unprocessable_entity
  end
end


private

  def prototype_params
    params.require(:prototype).permit(:title, :image, :catch_copy, :concept )
  end


end
