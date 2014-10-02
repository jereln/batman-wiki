require 'test_helper'

feature 'the wiki lists all articles' do
  scenario 'visiting the wiki' do
    visit articles_path
    page.must_have_content "I'm Batman!"
  end
end
