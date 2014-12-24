require 'rails_helper'

feature 'User creates todo' do
  scenario 'sucessfully' do
    sign_in

    create_todo "Clean Room"

    expect(page).to display_todo "Clean Room"
  end
end
