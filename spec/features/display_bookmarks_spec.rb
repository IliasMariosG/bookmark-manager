feature 'Displays bookmarks' do
  scenario 'user navigates to index page and bookmarks are displayed' do
    bookmarks = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(title: 'Makers', url: 'https://www.makersacademy.com')   
    
    visit '/'
    expect(page).to have_content 'Makers'
  end
end