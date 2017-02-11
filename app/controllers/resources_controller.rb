class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def show
    @resource = Resource.find(params[:id])
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.new(resource_params)
    @resource.language = @resource.language.downcase
    @resource.tech = @resource.tech.downcase

    if @resource.save
      flash[:message] = 'Resource saved!'
      redirect_to resource_path(@resource)
    else
      flash[:message] = 'Resource failed to save.'
      render new_resource_path(@resource)
    end
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :url, :language, :tech, :free, :description)
  end
end
