class JournalsController < ApplicationController
  before_action :set_journal, only: [:show, :edit, :update, :destroy, :approve, :unapprove]
  before_action :authenticate_user!
  before_action :authorize_admin!, only: [:destroy]
  before_action :authorize_moderator!, only: [:index, :edit, :update, :approve, :unapprove]
  before_action :authorize_user!, only: [:new, :create, :show]

  # GET /journals
  # GET /journals.json
  def index
    @journals = Journal.all
  end

  # GET /journals/1
  # GET /journals/1.json
  def show
  end

  # GET /journals/new
  def new
    @journal = Journal.new
  end

  # GET /journals/1/edit
  def edit
  end

  # POST /journals
  # POST /journals.json
  def create
    @journal         = Journal.new(journal_params)
    @journal.user_id = current_user.id # Refactor

    respond_to do |format|
      if @journal.save
        format.html { redirect_to @journal, notice: 'Journal was successfully created.' }
        format.json { render :show, status: :created, location: @journal }
      else
        format.html { render :new }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /journals/1
  # PATCH/PUT /journals/1.json
  def update
    respond_to do |format|
      if @journal.update(journal_params)
        format.html { redirect_to @journal, notice: 'Journal was successfully updated.' }
        format.json { render :show, status: :ok, location: @journal }
      else
        format.html { render :edit }
        format.json { render json: @journal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /journals/1
  # DELETE /journals/1.json
  def destroy
    @journal.destroy
    respond_to do |format|
      format.html { redirect_to journals_url, notice: 'Journal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def approve
    if @journal.approve!
      flash.now[:notice] = 'Journal approved'
      render json: { approved: true, id: @journal.id }
    else
      render json: { invalid: true }
    end
  end

  def unapprove
    if @journal.unapprove!
      render json: { approved: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_journal
      @journal = Journal.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      # redirect_to journals_path, method: :get, notice: 'Journal does not exist'
      puts 'hi'
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def journal_params
      params.require(:journal).permit(:title, :editor, :impact_factor)
    end
end
