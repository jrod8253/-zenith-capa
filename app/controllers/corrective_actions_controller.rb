class CorrectiveActionsController < ApplicationController
  before_action :set_corrective_action, only: [:show, :edit, :update, :destroy]

  def index
    @corrective_action = CorrectiveAction.all
  end

  def show
  end

  def new
    @corrective_action = CorrectiveAction.new
    @corrective_action.status = true
  end

  def create
    @corrective_action = current_user.corrective_actions.build(corrective_action_params)
    if @corrective_action.save
      redirect_to corrective_actions_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @corrective_action.update(corrective_action_params)
      redirect_to corrective_action_path(@corrective_action)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @corrective_action.destroy
    redirect_to corrective_actions_path, status: :see_other
  end

  private

  def corrective_action_params
    params.require(:corrective_action).permit(:title, :description, :status, :severity, :source, :date_opened, :opended_date, :updated_at)
  end

  def set_corrective_action
    @corrective_action = CorrectiveAction.find(params[:id])
  end
end
