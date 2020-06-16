module Helpers
    def create_mass_data()
        data = Hash.new
        data['Email'] = Faker::Internet.email
        data['Phone_Number'] = Faker::PhoneNumber.cell_phone_in_e164
        data['Password'] = Faker::Internet.password
        data
    end
end 