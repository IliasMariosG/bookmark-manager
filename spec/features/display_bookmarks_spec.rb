feature 'Displays bookmarks' do
  scenario 'user navigates to index page and bookmarks are displayed' do
    bookmarks = PG.connect(dbname: 'bookmark_manager_test')

      bookmarks.exec("INSERT INTO bookmarks VALUES (1, 'http://www.makersacademy.com');")
      bookmarks.exec("INSERT INTO bookmarks VALUES (2, 'https://google.com');")
      bookmarks.exec("INSERT INTO bookmarks VALUES (3, 'https://destroyallsoftware.com');")
    
      visit '/'
    expect(page).to have_content 'http://www.makersacademy.com, https://google.com, https://destroyallsoftware.com'
  end
end