class HomeController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new #대문자 중요함.
    @post.title = params[:post_title]
    @post.content = params[:post.content]
    @post.save
    
    redirect_to '/home/index'
  end
  
  def destroy
    post = Post.find(params[:post_id])
    post.destroy
    
    redirect_to '/home/index'
  end
  
  def edit
    @post = Post.find(params[:post_id]) #@골뱅이 Post라는 특정한 인스턴스 변수에 찾은 게시물을 저장.
    #@Post와 Post의 차이는 view 파일에서 작성한 코드를 보여주고 싶으면 인스턴스를 사용해야하고, 
    #보여주지 않을 땐 @ 필요없음.
  end
  
  def update
    post = Post.find(params[:post_id])
    post.title = params[:post_title]
    post.content = params[:post_content]
    post.save
    
    redirect_to '/home/index'
  end
end
