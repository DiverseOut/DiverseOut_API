class AdminsController < ApplicationController
  before_filter :cors_preflight_check
  after_filter :cors_set_access_control_headers

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

private
  # For all responses in this controller, return the CORS access control headers.
    def cors_set_access_control_headers
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
      headers['Access-Control-Max-Age'] = "1728000"
    end

    # If this is a preflight OPTIONS request, then short-circuit the
    # request, return only the necessary headers and return an empty
    # text/plain.

    def cors_preflight_check
      headers['Access-Control-Allow-Origin'] = '*'
      headers['Access-Control-Allow-Methods'] = 'POST, GET, OPTIONS'
      headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-Prototype-Version'
      headers['Access-Control-Max-Age'] = '1728000'
    end

    def admin_params
      params.require(:first_name, :last_name, :password).permit(:first_name, :last_name, :job_title, :password)
    end

end
