

feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit '/'
    expect(page).to have_content "Bookmark Manager"
  end

  feature 'Viewing bookmarks' do
    scenario 'A user can see bookmarks' do
      visit '/bookmarks'

      expect(page).to have_content "http://www.amazon.co.uk"
      expect(page).to have_content "http://www.box.co.uk"
      expect(page).to have_content "http://www.ebay.co.uk"
    end
  end
end