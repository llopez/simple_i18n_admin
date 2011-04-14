class TranslationsController < ApplicationController
  def search
    @translations = Translation.search(params[:term]).paginate(:per_page => 15, :page => params[:page])
    respond_to do |format|
      format.html{ render "index" }
    end    
  end

  def index
    @translations = Translation.all.paginate(:per_page => 15, :page => params[:page])
    respond_to do |format|
      format.html
    end
  end
  
  def new
    @translation = Translation.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @translation = Translation.new(params[:translation])
    respond_to do |format|
      if @translation.save
        format.html{redirect_to translations_path, :notice => "Translation added."}
      else
        format.html{render "new"}
      end
    end
  end
    
  def edit
    @translation = Translation.find(params[:id].gsub("+", "."))
    respond_to do |format|
      format.html
    end
  end
  
  def destroy
    @translation = Translation.find(params[:id].gsub("+", "."))
    if @translation.destroy
      flash[:notice] = "Translation deleted."
    else
      flash[:error] = "Translation not added."
    end
    redirect_to translations_path
  end
end
