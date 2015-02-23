require 'rails_helper'

describe 'User can CRUD courses' do

  scenario 'User can create a course' do
    visit '/'
    click_on "Create Course"
    fill_in 'course[title]', with: "Science"
    click_on "Create Course"
    expect(page).to have_content("Science")
  end


  scenario 'User can view a show page for a course' do

    @course = Course.create(:title => "Math")
    visit "/courses/#{@course.id}"
    expect(page).to have_content("Math")

  end


  scenario 'User can edit a course' do

    @course = Course.create(title: "Math")
    visit "/courses/#{@course.id}/edit"
    fill_in 'course[title]', with: "Advanced Math"
    click_on("Update Course")
    expect(page).to have_content("Advanced Math")

  end

  scenario 'User can delete a course' do
    @course = Course.create(title: "Advanced Math")
    visit "/courses"
    expect(page).to have_content("Advanced Math")
    click_on("Delete Course")
    expect(page).to have_no_content("Advanced Math")
  end

end
