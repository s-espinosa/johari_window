require 'rails_helper'

describe 'As a visitor when I visit `/`' do
  it 'I can create an account' do
    Cohort.create(name: "1602 BE")
    visit '/'

    fill_in 'user[name]', with: 'name'
    fill_in 'user[email]', with: 'email'
    fill_in 'user[password]', with: 'pass'
    fill_in 'user[password_confirmation]', with: 'pass'
    select '1602 BE', from: 'user[cohort_id]'
    click_on 'Create Account'

    expect(page).to have_content("Account successfully created!")
    expect(page).to have_content("Welcome, name.")
  end
end
