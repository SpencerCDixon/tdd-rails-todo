require 'rails_helper'

feature 'User creates todo' do
  scenario 'sucessfully' do
    sign_in

    click_on 'Add a new todo'

    fill_in "Title", with: "Clean Room"
    click_on "Create todo"

    expect(page).to have_content("Clean Room")
  end
end
