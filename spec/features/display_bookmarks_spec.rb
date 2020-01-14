feature 'Displays bookmarks' do
  scenario 'user navigates to index page and bookmarks are displayed' do
    visit '/'
    expect(page).to have_content 'http://www.makersacademy.com, https://google.com, https://destroyallsoftware.com'
  end
end