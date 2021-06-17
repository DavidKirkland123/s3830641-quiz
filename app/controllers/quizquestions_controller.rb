class QuizquestionsController < ApplicationController
  before_action :set_quizquestion, only: %i[ show edit update destroy ]

  # GET /quizquestions or /quizquestions.json
  def index
    @quizquestions = Quizquestion.all
  end

  # GET /quizquestions/1 or /quizquestions/1.json
  def show
  end

  # GET /quizquestions/new
  def new
    @quizquestion = Quizquestion.new
  end

  # GET /quizquestions/1/edit
  def edit
  end

  # POST /quizquestions or /quizquestions.json
  def create
    @quizquestion = Quizquestion.new(quizquestion_params)

    respond_to do |format|
      if @quizquestion.save
        format.html { redirect_to @quizquestion, notice: "Quizquestion was successfully created." }
        format.json { render :show, status: :created, location: @quizquestion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quizquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quizquestions/1 or /quizquestions/1.json
  def update
    respond_to do |format|
      if @quizquestion.update(quizquestion_params)
        format.html { redirect_to @quizquestion, notice: "Quizquestion was successfully updated." }
        format.json { render :show, status: :ok, location: @quizquestion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quizquestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quizquestions/1 or /quizquestions/1.json
  def destroy
    @quizquestion.destroy
    respond_to do |format|
      format.html { redirect_to quizquestions_url, notice: "Quizquestion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quizquestion
      @quizquestion = Quizquestion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quizquestion_params
      params.require(:quizquestion).permit(:quizquestion_id, :question, :description, :multiple_correct_answers, :correct_answer, :explanation, :tip, :category, :difficulty)
    end
end
