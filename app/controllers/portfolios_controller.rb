class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :update, :destroy]

  # GET /portfolios
  def index
    @portfolios = Portfolio.all

    render json: @portfolios
  end

  # GET /portfolios/1
  def show
    render json: @portfolio
  end

  # POST /portfolios
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      render json: @portfolio, status: :created, location: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
      render json: @portfolio
    else
      render json: @portfolio.errors, status: :unprocessable_entity
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def portfolio_params
      params.require(:portfolio).permit(:user_id, :project_name1, :tech1, :description1, :project_name2, :tech2, :description2, :project_name3, :tech3, :description3)
    end
end
