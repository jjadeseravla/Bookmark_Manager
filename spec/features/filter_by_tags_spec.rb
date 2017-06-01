feature 'filter by tag' do
  scenario 'list links only from that tag' do
    visit('/')
    click_button 'Add new link'
    fill_in('title', with: 'reddit')
    fill_in('url', with: 'http://www.reddit.com')
    fill_in('tags', with: 'bubbles')
    click_button 'Submit new link'
    visit ('/tags/bubbles')

    within 'ul#links' do
      expect(page).to have_content('bubbles')
    end
  end
end
