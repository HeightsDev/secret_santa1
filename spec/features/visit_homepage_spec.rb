describe "Visiting pages", type: :feature do
    scenario "A user can visit the homepage" do
        visit "/"
        expect(page).to have_content("Secret Santa")
    end

    scenario "A user can visit the participants/new view" do
        visit "/participants/new"
        expect(page).to have_content("Add a participant")
    end
end
