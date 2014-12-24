module Features
  def create_todo(todo_title)
    click_on 'Add a new todo'
    fill_in 'Title', with: todo_title
    click_on 'Create todo'
  end

  def display_todo(text)
     have_css '.todos li', text: text
  end
end
