class QuestionaireTemplatesController < ApplicationController
  before_action :set_questionaire_template, only: [:show, :edit, :update, :destroy]

  # GET /questionaire_templates
  # GET /questionaire_templates.json
  def index
    @questionaire_templates = QuestionaireTemplate.all
  end

  # GET /questionaire_templates/1
  # GET /questionaire_templates/1.json
  def show
  end

  # GET /questionaire_templates/new
  def new
    @questionaire_template = QuestionaireTemplate.new
  end

  # GET /questionaire_templates/1/edit
  def edit
  end

  # POST /questionaire_templates
  # POST /questionaire_templates.json
  def create
    @questionaire_template = QuestionaireTemplate.new(questionaire_template_params)

    respond_to do |format|
      if @questionaire_template.save
        format.html { redirect_to @questionaire_template, notice: 'Questionaire template was successfully created.' }
        format.json { render :show, status: :created, location: @questionaire_template }
      else
        format.html { render :new }
        format.json { render json: @questionaire_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionaire_templates/1
  # PATCH/PUT /questionaire_templates/1.json
  def update
    respond_to do |format|
      if @questionaire_template.update(questionaire_template_params)
        format.html { redirect_to @questionaire_template, notice: 'Questionaire template was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionaire_template }
      else
        format.html { render :edit }
        format.json { render json: @questionaire_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionaire_templates/1
  # DELETE /questionaire_templates/1.json
  def destroy
    @questionaire_template.destroy
    respond_to do |format|
      format.html { redirect_to questionaire_templates_url, notice: 'Questionaire template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionaire_template
      @questionaire_template = QuestionaireTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionaire_template_params
      params.require(:questionaire_template).permit(:name, :instructions, :comments)
    end
end
