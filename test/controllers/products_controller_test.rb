require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
    test 'render a list of products' do
        get products_path

        assert_response :success
        assert_select '.product', 2
    end
    test 'render a detailed product page' do
        get product_path(products(:A06).id)

        assert_response :success
        assert_select '.title', 'Samsung A06'
        assert_select '.description', '6ram, camera 50mp'
        assert_select '.price', '125$'
    end

    test 'render a new product form' do
        get new_product_path

        assert_response :success
        assert_select 'form'
    end
end