class Noticias::NotesController < Noticias::ResourceController
	def index
    @notes = Note.pertenece(current_user).dia
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @notes }
    end
  end

  # Se carga el formulario para poder terminar la nota
  def show
    @note = Note.find(params[:id])
    respond_to do |format|
      format.js
      format.html # show.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/new
  # GET /notes/new.json
  def new
    @note = Note.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @note }
    end
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
### Edita nota
  def edita_avance
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = current_user.notes.build(params[:note])
    respond_to do |format|
      if @note.save
        format.js {}
        format.html{ redirect_to noticias_notes_path, notice: 'Nota actualizada correctamente.'}
      else
        format.js{}
        format.html{ render action: "new"}
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.json
  def update
    @note = Note.find(params[:id])

    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.js { }
      else
        format.js
      end
    end
  end
  #Update de la edicion del avance
  def update_avance
    @note = Note.find(params[:id])
    respond_to do |format|
      if @note.update_attributes(params[:note])
        format.js
      else
       format.js
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to noticias_notes_url }
      format.json { head :no_content }
    end
  end

  def notas_terminadas
    @notes = Note.pertenece(current_user).dia
  end
  #########Capturistas
#Las capturistas veran las notas por plaza
  def capturistas_tab
    @plazas = Plaza.all
    respond_to do |format|
      format.html
    end
  end

  def notes_by_plaza
  @notes = Note.plaza(params[:id]).dia
    respond_to do |format|
      format.js {}
    end
  end
########Mustra la nota y permite poner el link del video y modificar la nota
  def show_note
    @note = Note.find(params[:id])
    respond_to do |format|
      format.js {}
    end
  end

  def note_finalizada
    @note = Note.find(params[:id])
    respond_to do |format|
      format.js {}
    end
  end
end
