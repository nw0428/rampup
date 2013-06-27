class ApplicationsController < ApplicationController
  http_basic_authenticate_with name: "sib", password: "sibpass", except:  [:index, :create, :new]

    def new
    end
    
    def create
  	 @app = Application.new(params[:applications])
  	
    if @app.save
      flash[:notice] = "Your application has been submitted"
      redirect_to action: "index"
    else
      render 'new'
    end

    end

    def show
  	 @app = Application.find(params[:id])
    end

    def index
    end

    def viewapps
      @apps = Application.all
    end


  end

