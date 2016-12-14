require 'rails_helper'

describe 'Posts' do
  it 'User can see all posts' do
    visit '/'
    expect(page).to have_content('Welcome')
  end
end
