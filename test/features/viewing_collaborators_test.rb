require 'test_helper'

feature 'viewing collaborators' do
  scenario 'viewing an article should show collaborators' do
    sign_in
    visit edit_article_path(articles(:first))
    fill_in 'Body', with: 'Blah'
    click_on 'Update Article'
    page.must_have_content 'batman@batman.com' 
  end
end