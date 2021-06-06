class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :destroy]

  def index
    @documents = Document.all
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    @document.user = current_user
    @document.save
    # if @document.save
    #   redirect_to documents_path
    # else
    #   render "index"
    # end
    redirect_to documents_path
  end

  def show
  end

  def destroy
    @document.destroy
    redirect_to documents_path
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name, :photo)
  end
end
