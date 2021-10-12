class AdvancedSearchesController < ApplicationController
  before_action :set_advanced_search, only: %i[ show edit update destroy ]
  before_action :set_search
  # GET /advanced_searches or /advanced_searches.json
  def index
    @advanced_searches = AdvancedSearch.all
  end

  # GET /advanced_searches/1 or /advanced_searches/1.json
  def show
  end

  # GET /advanced_searches/new
  def new
    @advanced_search = AdvancedSearch.new
  end

  # GET /advanced_searches/1/edit
  def edit
  end

  # POST /advanced_searches or /advanced_searches.json
  def create
    @advanced_search = AdvancedSearch.new(advanced_search_params)

    respond_to do |format|
      if @advanced_search.save
        format.html { redirect_to @advanced_search, notice: "Advanced search was successfully created." }
        format.json { render :show, status: :created, location: @advanced_search }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @advanced_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advanced_searches/1 or /advanced_searches/1.json
  def update
    respond_to do |format|
      if @advanced_search.update(advanced_search_params)
        format.html { redirect_to @advanced_search, notice: "Advanced search was successfully updated." }
        format.json { render :show, status: :ok, location: @advanced_search }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @advanced_search.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advanced_searches/1 or /advanced_searches/1.json
  def destroy
    @advanced_search.destroy
    respond_to do |format|
      format.html { redirect_to advanced_searches_url, notice: "Advanced search was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advanced_search
      @advanced_search = AdvancedSearch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def advanced_search_params
      params.fetch(:advanced_search, {})
    end
end
