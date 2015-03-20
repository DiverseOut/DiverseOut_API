class AdminsController < ApplicationController

  def index
    admins = Admin.all
    render :json => admins
  end

  def authenticate
    admin = Admin.find_by(email: params[:email], password_hash: params[:password])

    if admin
      render :json => admin
    else
      render :json => {:errors => "No user found"}
    end
  end

  def show
    admin = Admin.find(params[:id])

    if admin
      render :json => admin
    else
      render :json => {:errors => "No user found"}
    end
  end

  def create
    admin = Admin.create(admin_params)
    p admin
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
      render :json => admin
    else
      render :json => {:errors => admin.errors.full_messages}
    end
  end

  def destroy
  end

private

  def admin_params
    params.permit(:first_name, :last_name, :job_title, :password_hash, :email)
  end

end
