describe "Adding email addresses", type: :feature do
    xscenario "A user can add a list of two names/emails and see their recipient" do
        visit '/participants/new'
        fill_in("name", with: "Elliot")
        fill_in("email", with: "elliot@elliot.com")
        check "Is this you?"
        click_button("Submit")
        fill_in("name", with: "Adam")
        fill_in("email", with: "adam@adam.com")
        click_button("Submit")
        click_button("Assign pairs")
        expect(page).to have_content "Your recipient is Elliot!"
    end
end
