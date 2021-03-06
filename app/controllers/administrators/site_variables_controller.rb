class Administrators::SiteVariablesController < AdministratorsController


  before_action :set_site_variable, only: [:edit, :update, :destroy]


  def index
    @site_variables = SiteVariable.all
  end


  def update
    @site_variable.update(site_variable_params)
    respond_to do |format|
      if @site_variable.save
        format.html { redirect_to edit_administrators_site_variable_path(@site_variable), notice: 'Информация сохранена' }
      else
        format.html { redirect_to edit_administrators_site_variable_path(@site_variable), notice: 'Произошла ошибка' }
      end
    end
  end

  def edit

  end

 

  private


  def set_site_variable
    @site_variable = SiteVariable.find(params[:id])
  end

  def site_variable_params
    params.require(:site_variable).permit(:title, :descriptor, :content)
  end


end
