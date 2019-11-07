

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      visit '/bookmarks'

      expect(page).to have_content "https://www.makersacademy.com"
      expect(page).to have_content "https://www.google.com"
      expect(page).to have_content "https://www.destroyallsoftware.com"
    end
  end
end