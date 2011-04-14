class SimpleI18nAdmin::TranslationsController < SimpleI18nAdmin::ApplicationController
  layout "simple_i18n_admin"
  def search
    @translations = SimpleI18nAdmin::Translation.search(params[:term]).paginate(:per_page => 15, :page => params[:page])
    respond_to do |format|
      format.html{ render "index" }
    end    
  end

  def index
    @translations = SimpleI18nAdmin::Translation.all.paginate(:per_page => 15, :page => params[:page])
    respond_to do |format|
      format.html
    end
  end
  
  def new
    @translation = SimpleI18nAdmin::Translation.new
    respond_to do |format|
      format.html
    end
  end

  def create
    @translation = SimpleI18nAdmin::Translation.new(params[:simple_i18n_admin_translation])
    respond_to do |format|
      if @translation.save
        format.html{redirect_to simple_i18n_admin_translations_path, :notice => "Translation added."}
      else
        format.html{render "new"}
      end
    end
  end
    
  def edit
    @translation = SimpleI18nAdmin::Translation.find(params[:id].gsub("+", "."))
    respond_to do |format|
      format.html
    end
  end
  
  def destroy
    @translation = SimpleI18nAdmin::Translation.find(params[:id].gsub("+", "."))
    if @translation.destroy
      flash[:notice] = "Translation deleted."
    else
      flash[:error] = "Translation not added."
    end
    redirect_to simple_i18n_admin_translations_path
  end
end
