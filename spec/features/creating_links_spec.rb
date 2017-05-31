feature 'submitting links' do
  scenario 'user submits a new link using a form' do
    visit('/')
    click_button 'Add new link'
    fill_in('title', with: 'reddit')
    fill_in('url', with: 'http://www.reddit.com')
    click_button 'Submit new link'

    within 'ul#links' do
      expect(page).to have_content('reddit')
    end
  end

  scenario 'user adds a tag' do
    visit('/')
    click_button 'Add new link'
    fill_in('title', with: 'reddit')
    fill_in('url', with: 'http://www.reddit.com')
    fill_in('tags', with: 'news')
    click_button 'Submit new link'

    within 'ul#links' do
      expect(page).to have_content('news')
    end
  end
end
