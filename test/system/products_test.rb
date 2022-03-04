require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  test "visiting the homepage" do
    # Exercise
    visit "/"

    # save_and_open_screenshot

    # Verify
    assert_selector "h1", text: "Awesome Products"
    assert_selector ".card-product", count: Product.count
  end

  test "adding a new product" do
    # we log in
    login_as users(:alex)

    # we go to the page we wanna test
    visit "/products/new"

    # save_and_open_screenshot

    # fill out the form
    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life, learn to code"

    # submit
    click_on "Create Product"

    # save_and_open_screenshot

    # check that the product was created
    # VERIFY
    assert_equal root_path, page.current_path
    assert_text "Le Wagon"
    assert_text "Change your life, learn to code"
  end
end
