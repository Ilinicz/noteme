class API::V1::NotesController < ApplicationController

  before_action :set_note, only: [:show, :update, :destroy]

  respond_to :json

  def index
    @notes = Note.all
    respond_with @notes
  end

  def show
    respond_with @note
  end

  def create
    respond_with Note.create note_params
  end

  def update
    respond_with @note.update note_params
  end

  def destroy
    @note.archive!
    head 204
  end

  private

  def set_note
    @note = Note.find_unarchived params[:id]
  end

  def note_params
    params.require(:note).permit(:title, :body, :published_at, :archived)
  end
  
end