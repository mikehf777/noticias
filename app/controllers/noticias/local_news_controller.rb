class Noticias::LocalNewsController  < Noticias::ResourceController
	def index
    @local_news = LocalNews.fecha
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @local_news }
    end
  end

  # Se carga el formulario para poder terminar la nota
  def show
    @local_news = LocalNews.find(params[:id])
    respond_to do |format|
      format.js
      format.html # show.html.erb
      format.json { render json: @local_news }
    end
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @local_news = LocalNews.new
    @notes = Note.plaza(current_user.plaza_id).fuente.dia
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /notes/1/edit
  def edit
    @local_news = LocalNews.find(params[:id])
    respond_to do |format|
      format.js
    end
  end


  # POST /notes
  # POST /notes.json
  def create
    @local_news = LocalNews.new(params[:local_news])
    respond_to do |format|
     if @local_news.save
         format.js {}
         format.html{ redirect_to termina_noticiero_noticias_local_news_path(@local_news), notice: 'Noticiero Creado Correctamente'}
       else
         format.js{}
         format.html{ render action: "new"}
       end
     end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @local_news = LocalNews.find(params[:id])
    respond_to do |format|
      if @local_news.update_attributes(params[:local_news])
        format.html{ redirect_to [:noticias, @local_news], notice: 'Noticiero Actualizado'}
      else
        format.js
      end
    end
  end
 
  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @local_news = LocalNews.find(params[:id])
    @local_news.destroy
    respond_to do |format|
      format.html { redirect_to noticias_local_news_url }
      format.json { head :no_content }
    end
  end

  def termina_noticiero
    @local_news = LocalNews.find(params[:id])
    respond_to do |format|
      format.js
      format.html # show.html.erb
      format.json { render json: @local_news }
    end
  end

  def messages
    @messages = Message.all
    @notes_messages = NotesMessage.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def new_peninsular
    @local_news = LocalNews.new
    @plazas = Plaza.all
    respond_to do |format|
      format.html # new.html.erb
    end

  end

end

