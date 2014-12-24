require 'rails_helper'

feature 'User completes a todo' do
  scenario 'successfully' do
    sign_in

    create_todo "Buy milk"

    click_button 'Mark complete'
    expect(page).to have_css '.todos li.completed', text: 'Buy milk'
  end
end
