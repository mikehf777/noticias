class Noticias::MessagesController  < Noticias::ResourceController
	def index
    @messages = Message.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @messages }
    end
  end

  # Se carga el formulario para poder terminar la nota
  def show
    @message = Message.find(params[:id])
    respond_to do |format|
      format.js
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @message = Message.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  # GET /notes/1/edit
  def edit
    @message = Message.find(params[:id])
    respond_to do |format|
      format.js
    end
  end


  # POST /notes
  # POST /notes.json
  def create
    @message = Message.new(params[:message])
    respond_to do |format|
      if @message.save
        format.js {}
        format.html{ redirect_to noticias_messages_path, notice: 'Mensaje creado correctamente.'}
      else
        format.js{}
        format.html{ render action: "new"}
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @message = Message.find(params[:id])
    respond_to do |format|
      if @message.update_attributes(params[:message])
        format.js { }
      else
        format.js
      end
    end
  end
 
  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    respond_to do |format|
      format.html { redirect_to noticias_messages_url }
      format.json { head :no_content }
    end
  end

end
