JobVacancy.controllers :users do
  get :new, :map => "/register" do
    @user = User.new
    render 'users/new'
  end

  get :confirm, :map => "/confirm/:id/:code" do
    @user = User.find_by_id(params[:id])
    if (@user &&  @user.authenticate(params[:code]))
      flash[:notice] = "You have been confirmed. Please confirm with the mail we've send you recently."
      render 'users/confirm'
    else
      flash[:error] = "Confirmed code is wrong."
      redirect('/')
    end
  end

  post :create do
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "You have been registered. Please confirm with the mail we've send you recently."
      redirect('/')
    else
      render 'users/new'
    end
  end
end
