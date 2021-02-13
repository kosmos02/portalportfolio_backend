require 'test_helper'

class PortfoliosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio = portfolios(:one)
  end

  test "should get index" do
    get portfolios_url, as: :json
    assert_response :success
  end

  test "should create portfolio" do
    assert_difference('Portfolio.count') do
      post portfolios_url, params: { portfolio: { description1: @portfolio.description1, description2: @portfolio.description2, description3: @portfolio.description3, project_name1: @portfolio.project_name1, project_name2: @portfolio.project_name2, project_name3: @portfolio.project_name3, tech1: @portfolio.tech1, tech2: @portfolio.tech2, tech3: @portfolio.tech3, user_id: @portfolio.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show portfolio" do
    get portfolio_url(@portfolio), as: :json
    assert_response :success
  end

  test "should update portfolio" do
    patch portfolio_url(@portfolio), params: { portfolio: { description1: @portfolio.description1, description2: @portfolio.description2, description3: @portfolio.description3, project_name1: @portfolio.project_name1, project_name2: @portfolio.project_name2, project_name3: @portfolio.project_name3, tech1: @portfolio.tech1, tech2: @portfolio.tech2, tech3: @portfolio.tech3, user_id: @portfolio.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy portfolio" do
    assert_difference('Portfolio.count', -1) do
      delete portfolio_url(@portfolio), as: :json
    end

    assert_response 204
  end
end
