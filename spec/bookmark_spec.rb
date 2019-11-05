require './lib/bookmark'

describe Bookmark do
    it 'creates and instance of the Bookmark class' do
      expect(subject).to be_an_instance_of Bookmark
    end

  describe '#all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include("http://www.amazon.co.uk")
      expect(bookmarks).to include("http://www.box.co.uk")
      expect(bookmarks).to include("http://www.ebay.co.uk")
    end
  end
end