class CorrectiveActionsController < ApplicationController
  def index
    @corrective_action = CorrectiveAction.all
  end

  def show
    @corrective_action = CorrectiveAction.find(params[:id])
  end

  def new
    @corrective_action = CorrectiveAction.new
  end

  def create
    @corrective_action = current_user.corrective_actions.build(corrective_action_params)
    if @corrective_action.save
      redirect_to corrective_actions_path
    else
      render 'new'
    end
  end

  private

  def corrective_action_params
    params.require(:corrective_action).permit(:title, :description, :status, :severity, :source)
  end
end
