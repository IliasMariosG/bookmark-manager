feature 'Deletes bookmarks' do
 scenario 'user click on a Delete button and the bookmark is no longer displayed' do
   visit '/'
   fill_in('create_url', with: 'https://test.com')
   fill_in('create_title', with: 'Test')
   click_button('Add new')
   first('.bookmark').click_button 'Delete'
   
   expect(page).not_to have_content 'Test'
 end
end