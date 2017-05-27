# frozen_string_literal: true
class BudgetsController < ApplicationController
  def new
    @budget = Budget.new
  end

  def create
    @budget = Budget.create(budget_params)

    if @budget.save
      redirect_to @budget, notice: t('.success')
    else
      flash[:alert] = t('.alert')
      render :new
    end
  end

  def show
    @budget = Budget.find(params[:id])
  end

  def index
    @budgets = Budget.all
  end

  private

  def budget_params
    params.require(:budget).permit(
      :client_name, :client_email, :client_phone, :description
    )
  end
end
