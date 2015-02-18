class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def new
  end
  
  def create
    a = Animal.new
    a.name = params['name']
    a.pic = params['pic']
    a.fact = params['fact']
    a.save
    
    redirect_to "/animals/#{a.id}"
  end
  
  def show
    @animal = Animal.find(params['id'])
  end
  
  def edit
    @animal = Animal.find(params['id'])
  end
  
  def update
    a = Animal.find(params['id'])
    a.name = params['name']
    a.pic = params['pic']
    a.fact = params['fact']
    a.save
    
    redirect_to "/animals/#{a.id}"
  end
  def destroy
     a = Animal.find(params['id'])
    a.destroy
    redirect_to "/new_animal"
  end
  def index
   @animals = Animal.all
  end
end
