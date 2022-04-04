class NotesController < ApplicationController
  before_action :authenticate_user!

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @notes = Note.new
  end

  def edit
  end

  def create
    @notes = Note.new(notes_params)

    respond_to do |format|
      if @notes.save
        format.html { redirect_to notes_url(@notes), notice: "Note was successfully created." }
        format.json { render :show, status: :created, location: @notes }
      else
      end
    end
  end

  def notes_params
    params.require(:notes).permit(:notes, :user_id)
  end
end
