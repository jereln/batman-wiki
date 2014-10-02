require 'test_helper'

feature 'viewing user page' do
  scenario 'user page should show all articles contributed to' do
    sign_in
    visit edit_article_path(articles(:first))
    fill_in 'Body', with: 'Blah'
    click_on 'Update Article'
    visit user_path(users(:batman))
    page.must_have_content 'Batman is awesome'
  end
end
