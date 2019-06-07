require 'test_helper'

class StatBlocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stat_block = stat_blocks(:one)
  end

  test "should get index" do
    get stat_blocks_url, as: :json
    assert_response :success
  end

  test "should create stat_block" do
    assert_difference('StatBlock.count') do
      post stat_blocks_url, params: { stat_block: { display_name: @stat_block.display_name, graduated: @stat_block.graduated, hired: @stat_block.hired, in_deadpool: @stat_block.in_deadpool, job_description: @stat_block.job_description, job_title: @stat_block.job_title, user_id: @stat_block.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show stat_block" do
    get stat_block_url(@stat_block), as: :json
    assert_response :success
  end

  test "should update stat_block" do
    patch stat_block_url(@stat_block), params: { stat_block: { display_name: @stat_block.display_name, graduated: @stat_block.graduated, hired: @stat_block.hired, in_deadpool: @stat_block.in_deadpool, job_description: @stat_block.job_description, job_title: @stat_block.job_title, user_id: @stat_block.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy stat_block" do
    assert_difference('StatBlock.count', -1) do
      delete stat_block_url(@stat_block), as: :json
    end

    assert_response 204
  end
end
