class PrototypesController < ApplicationController

def index

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


private

  def prototype_params
    params.require(:prototype).permit(:title, :image, :catch_copy, :concept )
  end


end
