class Noticias::NotificationsController < Noticias::ResourceController
	def index
    @notifications = Notification.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notifications }
    end
  end

  # GET /notifications/1
  # GET /notifications/1.json
  def show
    @notification = Notification.find(params[:id])
    @note = Note.new 

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @notification }
    end
  end

  # GET /notifications/new
  # GET /notifications/new.json
  def new
    @notification = Notification.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @notification }
    end
  end

  # GET /notifications/1/edit
  def edit
    @notification = Notification.find(params[:id])
  end

  # POST /notifications
  # POST /notifications.json
  def create
    @notification = current_user.notifications.build(params[:notification])
    respond_to do |format|
      if @notification.save
        format.js {}
      else
        format.js{}
      end
    end
  end

  # PUT /notifications/1
  # PUT /notifications/1.json
  def update
    @notification = Notification.find(params[:id])

    respond_to do |format|
      if @notification.update_attributes(params[:notification])
        format.html { redirect_to [:noticias, @notification], notice: 'Notificacion actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifications/1
  # DELETE /notifications/1.json
  def destroy
    @notification = Notification.find(params[:id])
    @notification.destroy

    respond_to do |format|
      format.html { redirect_to noticias_notifications_url }
      format.json { head :no_content }
    end
  end

  def comisiones_recibidas
    @notifications =  Notification.todas(current_user).pendientes
  end

  def usuarios_comisionados
    @reporteros = User.plaza(current_user.plaza_id).with_role :reportero
  end

  def enviar_comisiones
    user = User.find(params[:id])
    notifications = Notification.notified_user(user.id)
     if MasterMailer.enviar_comisiones(user,notifications).deliver!
        redirect_to usuarios_comisionados_noticias_notifications_path ,:notice => "Comisiones Enviadas de #{user.name}" 
     else
        redirect_to usuarios_comisionados_noticias_notifications_path ,:alert => "Error correo no enviado"
      end

  end

end
