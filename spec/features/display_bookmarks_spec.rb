feature 'Displays bookmarks' do
  scenario 'user navigates to index page and bookmarks are displayed' do
    visit '/'
    expect(page).to have_content 'Bookmark 1 Bookmark 2'
  end
end