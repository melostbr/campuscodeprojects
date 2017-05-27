# frozen_string_literal: true
class EquipmentController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.create(equipment_params)

    if @equipment.save
      redirect_to @equipment, notice: t('.success')
    else
      flash[:alert] = t('.alert')
      render :new
    end
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def index
    @equipment = Equipment.all
  end

  private

  def equipment_params
    params.require(:equipment).permit(
      :code, :name, :serial_number, :supplier, :category, :value, :status
    )
  end
end
