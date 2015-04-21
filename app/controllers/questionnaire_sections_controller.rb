class QuestionnaireSectionsController < ApplicationController
  before_filter :authenticate_user!
  before_action :load_questionnaire_template
  before_action :set_questionnaire_section, only: [:show, :edit, :update, :destroy]
  
  # GET /questionnaire_sections
  # GET /questionnaire_sections.json
  def index
    @questionnaire_sections = @qt.questionnaire_sections.all
  end

  # GET /questionnaire_sections/1
  # GET /questionnaire_sections/1.json
  def show  
    #I think we need to put something here
  end

  # GET /questionnaire_sections/new
  def new
    @questionnaire_section = @qt.questionnaire_sections.new
  end

  # GET /questionnaire_sections/1/edit
  def edit
  end

  # POST /questionnaire_sections
  # POST /questionnaire_sections.json
  def create
    @questionnaire_section = @qt.questionnaire_sections.new(questionnaire_section_params)

    respond_to do |format|
      if @questionnaire_section.save
        format.html { redirect_to [@qt, @questionnaire_section], notice: 'questionnaire section was successfully created.' }
        format.json { render :show, status: :created, location: @questionnaire_section }
      else
        format.html { render :new }
        format.json { render json: @questionnaire_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaire_sections/1
  # PATCH/PUT /questionnaire_sections/1.json
  def update
    respond_to do |format|
      if @questionnaire_section.update(questionnaire_section_params)
        format.html { redirect_to [@qt, @questionnaire_section], notice: 'questionnaire section was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionnaire_section }
      else
        format.html { render :edit }
        format.json { render json: @questionnaire_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaire_sections/1
  # DELETE /questionnaire_sections/1.json
  def destroy
    @questionnaire_section.destroy
    respond_to do |format|
      format.html { redirect_to questionnaire_sections_url, notice: 'questionnaire section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_questionnaire_template
      @qt = QuestionnaireTemplate.find(params[:questionnaire_template_id])      
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_section
      @questionnaire_section = @qt.questionnaire_sections.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionnaire_section_params
      #params.require(:questionnaire_section).permit(:name, :title, :subtitle, :required_yn, questionnaire_template_attributes: [:id])
      params.require(:questionnaire_section).permit(:name, :title, :subtitle, :required_yn)
      #params[:questionnaire_section]
    end
end
