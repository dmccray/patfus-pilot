class QuestionnaireTemplatesController < ApplicationController
  before_action :set_questionnaire_template, only: [:show, :edit, :update, :destroy]

  # GET /questionnaire_templates
  # GET /questionnaire_templates.json
  def index
    @questionnaire_templates = QuestionnaireTemplate.all

    flash.now[:notice] = "This is a test"

  end

  # GET /questionnaire_templates/1
  # GET /questionnaire_templates/1.json
  def show
  end

  # GET /questionnaire_templates/new
  def new
    @questionnaire_template = QuestionnaireTemplate.new
  end

  # GET /questionnaire_templates/1/edit
  def edit
  end

  # POST /questionnaire_templates
  # POST /questionnaire_templates.json
  def create
    @questionnaire_template = QuestionnaireTemplate.new(questionnaire_template_params)

    respond_to do |format|
      if @questionnaire_template.save
        format.html { redirect_to @questionnaire_template, notice: 'questionnaire template was successfully created.' }
        format.json { render :show, status: :created, location: @questionnaire_template }
      else
        format.html { render :new }
        format.json { render json: @questionnaire_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaire_templates/1
  # PATCH/PUT /questionnaire_templates/1.json
  def update
    respond_to do |format|
      if @questionnaire_template.update(questionnaire_template_params)
        format.html { redirect_to @questionnaire_template, notice: 'questionnaire template was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionnaire_template }
      else
        format.html { render :edit }
        format.json { render json: @questionnaire_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaire_templates/1
  # DELETE /questionnaire_templates/1.json
  def destroy
    @questionnaire_template.destroy
    respond_to do |format|
      format.html { redirect_to questionnaire_templates_url, notice: 'questionnaire template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_template
      @questionnaire_template = QuestionnaireTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionnaire_template_params
      params.require(:questionnaire_template).permit(:name, :qt_type_id, :instructions, :comments)
    end
end
