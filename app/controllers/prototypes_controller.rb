class PrototypesController < ApplicationController
  # 新規作成,編集,削除はログインしてる人のみ
  before_action :authenticate_user!, only: [:new, :edit, :destroy]


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
  @comment = Comment.new
  @comments = @prototype.comments.includes(:user)
  

end

def edit
  @prototype = Prototype.find(params[:id])
  # 投稿者じゃなかったらトップページに遷移する
  if current_user.id != @prototype.user_id
    redirect_to action: :index
  end
end

def update
  @prototype = Prototype.find(params[:id])
  if @prototype.update(prototype_params)
    redirect_to prototype_path(@prototype)
  else
   render :edit, status: :unprocessable_entity
  end
end

def destroy
  @prototype = Prototype.find(params[:id])
  @prototype.destroy
  redirect_to '/'

end


private

  def prototype_params
    params.require(:prototype).permit(:title, :image, :catch_copy, :concept ).merge(user_id: current_user.id)
  end


end
