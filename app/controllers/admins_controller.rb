class AdminsController < ApplicationController
  # before_filter :allow_cors

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

    if admin.save
      render :json => admin
    else
      render :json => {:errors => admin.errors.full_messages}
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

private

  # def allow_cors
  #   headers['Access-Control-Allow-Origin'] = '*'
  #   headers['Access-Control-Allow-Methods'] = 'POST, GET, PUT, PATCH, DELETE, OPTIONS'
  #   headers['Access-Control-Allow-Headers'] = 'Origin Content-Type, Accept, Authorization, Token'
  # end

  def admin_params
    params.permit(:first_name, :last_name, :job_title, :password)
  end

end
