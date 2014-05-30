# coding: utf-8

feature 'Pages' do

  background do
    visit root_path
  end

  scenario 'content in English', :en do
    expect(page).to have_text 'Heading'
  end

  scenario 'content in Spanish', :es do
    expect(page).to have_text 'Título'
  end
end
