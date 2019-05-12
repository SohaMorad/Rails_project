class ReciepesController < ApplicationController

  def index
    @list_of_reciepes = Reciepe.all
  end

  def show
    id = params[:id]
    @result_reciepe =  Reciepe.find(id)
  end

  def new
    @rp = Reciepe.new
  end

  def create

    @reciepe = Reciepe.new(
        params.require(:reciepe).permit(:title, :description, :madeMy)
    )

    result = @reciepe.save()

    if result
      redirect_to :action=>'index'
    else
      redirect_to_back
    end



    end

  def destroy
    id = params[:id]
    @result_reciepe=  Reciepe.find(id)
    @result_reciepe.destroy

    redirect_to :action=>'index'
  end




  def edit

    id = params[:id]
    @result_reciepe =  Reciepe.find(id)


  end

  def update

    id = params[:id]
    @result_reciepe =  Reciepe.find(id)



    if @result_reciepe.update(params.require(:reciepe).permit(:title, :description, :madeMy))


      result =  @result_reciepe.save()

     if result
      redirect_to :action=>'index'
    else
     redirect_to_back
     end

     end
    end





end
