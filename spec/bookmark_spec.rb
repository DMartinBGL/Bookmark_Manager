require './lib/bookmark'

describe Bookmark do
    it 'creates and instance of the Bookmark class' do
      expect(subject).to be_an_instance_of Bookmark
    end

  describe '#all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      # Add the test data
      connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.google.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include "https://www.makersacademy.com"
      expect(bookmarks).to include "https://www.destroyallsoftware.com"
      expect(bookmarks).to include "https://www.google.com"
    end
  end
end