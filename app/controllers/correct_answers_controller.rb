class CorrectAnswersController < ApplicationController
  before_action :set_correct_answer, only: %i[ show edit update destroy ]

  # GET /correct_answers or /correct_answers.json
  def index
    @correct_answers = CorrectAnswer.all
  end

  # GET /correct_answers/1 or /correct_answers/1.json
  def show
  end

  # GET /correct_answers/new
  def new
    @correct_answer = CorrectAnswer.new
  end

  # GET /correct_answers/1/edit
  def edit
  end

  # POST /correct_answers or /correct_answers.json
  def create
    @correct_answer = CorrectAnswer.new(correct_answer_params)

    respond_to do |format|
      if @correct_answer.save
        format.html { redirect_to @correct_answer, notice: "Correct answer was successfully created." }
        format.json { render :show, status: :created, location: @correct_answer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @correct_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /correct_answers/1 or /correct_answers/1.json
  def update
    respond_to do |format|
      if @correct_answer.update(correct_answer_params)
        format.html { redirect_to @correct_answer, notice: "Correct answer was successfully updated." }
        format.json { render :show, status: :ok, location: @correct_answer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @correct_answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /correct_answers/1 or /correct_answers/1.json
  def destroy
    @correct_answer.destroy
    respond_to do |format|
      format.html { redirect_to correct_answers_url, notice: "Correct answer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_correct_answer
      @correct_answer = CorrectAnswer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def correct_answer_params
      params.require(:correct_answer).permit(:answer_a_correct, :answer_b_correct, :answer_c_correct, :answer_d_correct, :answer_e_correct, :answer_f_correct, :quizquestion_id)
    end
end
