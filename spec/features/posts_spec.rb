require 'rails_helper'

describe 'Posts' do
  it '#CRUD', js: true do
    visit '/'
    expect(page).to have_content('Home')
    click_on ('Posts')
    click_on ('New Post')
    fill_in 'Author', with: 'Cersai Lannister'
    fill_in 'Title', with: 'On Family'
    fill_in 'Body', with: "Everyone who isn’t us is an enemy."
    fill_in 'Image url', with: 'http://images6.fanpop.com/image/photos/34300000/Cersei-Lannister-cersei-lannister-34373551-245-300.gif'
    click_on 'Add Post'

    expect(page).to have_content 'Cersai Lannister'
    expect(page).to have_content 'On Family'
    expect(page).to have_content 'Everyone who isn’t us is an enemy.'
  end
end
