class PrototypesController < ApplicationController

def index

end

def new

end



private

  def prototype_params
    params.require(:prototype).permit(:title, :image, :catch_copy, :concept )
  end


end
