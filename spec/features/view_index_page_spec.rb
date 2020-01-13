feature 'view index page' do
  scenario 'user navigates to index page' do
    visit '/'
    expect(page).to have_content 'Hello, world'
  end
end