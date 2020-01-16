feature 'Creates bookmarks' do
  scenario 'user enters a title and a url and presses Add button' do
    visit '/'
    fill_in('create_url', with: 'https://test.com')
    fill_in('create_title', with: 'Test')
    click_button('Add new')
    expect(page).to have_content 'https://test.com'
    expect(page).to have_content 'Test'
  end
end