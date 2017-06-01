feature 'add multiple tags to the links' do
  scenario 'add more then one tag when creating a new link' do
    visit('/')
    click_button 'Add new link'
    fill_in('title', with: 'reddit')
    fill_in('url', with: 'http://www.reddit.com')
    fill_in('tags', with: 'bubbles, life, news')
    click_button 'Submit new link'
  
    # check if the tags have been added to the table 'Links' inside the database
    expect(Link.first.tags.map(&:name)).to include('bubbles', 'life', 'news')
  end
end
