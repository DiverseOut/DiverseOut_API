class AdminsController < ApplicationController
  before_filter :cors

  def index
    admins = Admin.all
    render :json => admins
  end

  def show
    admin = Admin.find(params[:id])
    render :json => admin
  end

  def create
    admin = Admin.create(admin_params)

    respond_to do |format|
      if admin.save
        format.html { redirect_to questions_path, notice: 'admin was successfully created.' }
        format.js   {}
        format.json { render json: admin, status: :created, location: admin }
      else
        format.html { render action: "new" }
        format.json { render json: admin.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    admin = Admin.find(params[:id])
    render :json => admin
  end

  def update
    admin = Admin.find(params[:id])

    if admin.update(admin_params)
      redirect_to admin
    else
      render 'edit'
    end
  end

  def destroy
  end

  def cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
    headers['Access-Control-Allow-Headers'] = 'Origin Content-Type, Accept, Authorization, Token'
  end

  private
    def admin_params
      params.require(:first_name, :last_name, :password).permit(:first_name, :last_name, :job_title, :password)
    end

end
