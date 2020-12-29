class DocumentsController < ApplicationController

  def new
    @document = Document.new
    @documents = Document.all
  end

  def create
    @document = Document.new(document_params)
    @document.signed_on = DateTime.now

    if @document.save
      redirect_to root_url, notice: 'Signature Saved'
    else
      render :new
    end
  end


  private

  def document_params
    params.require(:document).permit(:signature)
  end
end