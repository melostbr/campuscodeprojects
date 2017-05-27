# frozen_string_literal: true
class JobsController < ApplicationController
  before_action :set_collection, only: [:new, :edit]

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create(job_params)
    if @job.save
      redirect_to @job
    else
      set_collection
      flash[:error] = 'Não foi possível criar a vaga'
      render :new
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      redirect_to @job
    else
      set_collection
      flash[:error] = 'Não foi possível atualizar a vaga'
      render :edit
    end
  end

  private

  def job_params
    params.require(:job).permit(
      :title, :location, :category_id, :company_id, :description, :featured
    )
  end

  def set_collection
    @companies = Company.all
    @categories = Category.all
  end
end
