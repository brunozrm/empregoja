class JobsController < ApplicationController
  def show
    @job = Job.find(params[:id])
  end
  def new
    @job = Job.new
  end

  def create
    @job = Job.create(params.require(:job).permit(:title, :location, :category, :company, :description))
    #if @job.save
      redirect_to @job
    #else
      #flash[:error] = 'Campo obrigatório'
      #render :new
    #end
  end

end
