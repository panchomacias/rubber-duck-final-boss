class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to question_path(@question), notice: "Question updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question), notice: "Question created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path, status: :see_other, alert: "Question deleted successfully"
  end

  private

  def question_params
    params.require(:question).permit(:content, :topic, :description, :color)
  end
end
