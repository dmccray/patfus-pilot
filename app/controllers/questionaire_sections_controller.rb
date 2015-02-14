class QuestionaireSectionsController < ApplicationController
  before_action :load_questionaire_template
  before_action :set_questionaire_section, only: [:show, :edit, :update, :destroy]
  
  # GET /questionaire_sections
  # GET /questionaire_sections.json
  def index
    @questionaire_sections = @qt.questionaire_sections.all
  end

  # GET /questionaire_sections/1
  # GET /questionaire_sections/1.json
  def show  
    #I think we need to put something here
  end

  # GET /questionaire_sections/new
  def new
    @questionaire_section = @qt.questionaire_sections.new
  end

  # GET /questionaire_sections/1/edit
  def edit
  end

  # POST /questionaire_sections
  # POST /questionaire_sections.json
  def create
    @questionaire_section = @qt.questionaire_sections.new(questionaire_section_params)

    respond_to do |format|
      if @questionaire_section.save
        format.html { redirect_to [@qt, @questionaire_section], notice: 'Questionaire section was successfully created.' }
        format.json { render :show, status: :created, location: @questionaire_section }
      else
        format.html { render :new }
        format.json { render json: @questionaire_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionaire_sections/1
  # PATCH/PUT /questionaire_sections/1.json
  def update
    respond_to do |format|
      if @questionaire_section.update(questionaire_section_params)
        format.html { redirect_to [@qt, @questionaire_section], notice: 'Questionaire section was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionaire_section }
      else
        format.html { render :edit }
        format.json { render json: @questionaire_section.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionaire_sections/1
  # DELETE /questionaire_sections/1.json
  def destroy
    @questionaire_section.destroy
    respond_to do |format|
      format.html { redirect_to questionaire_sections_url, notice: 'Questionaire section was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_questionaire_template
      @qt = QuestionaireTemplate.find(params[:questionaire_template_id])      
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_questionaire_section
      @questionaire_section = @qt.questionaire_sections.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionaire_section_params
      #params.require(:questionaire_section).permit(:name, :title, :subtitle, :required_yn, questionaire_template_attributes: [:id])
      params.require(:questionaire_section).permit(:name, :title, :subtitle, :required_yn)
      #params[:questionaire_section]
    end
end
