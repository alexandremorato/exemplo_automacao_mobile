class PageCreateAccount < Locators

  def elements_create_account
    {
      i_am_new: "I AM NEW",
      email: "E-mail",
      phone: "Phone number",
      pass: "Password",
      btn_create_account: "CREATE ACCOUNT",
      btn_submit_code: "SUBMIT CODE",
      token_number_1: "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[6]/android.view.ViewGroup[1]"
    }
  end  

  def create_account(data)
    fill_email data['Email']
    fill_phone_number data['Phone_Number']
    fill_password data['Password']
    click_btn_create_account
  end

  def fill_token()
    token = find_elements_with_xpath(elements_create_account[:token_number_1])
    wait(token[0], 10)
    token[0].click
  end  

  def fill_email(email)
    wait(find_element_by_text(elements_create_account[:email]), 10)
    find_element_by_text(elements_create_account[:email]).send_keys email
  end

  def fill_phone_number(phone)
    wait(find_element_by_text(elements_create_account[:phone]), 10)
    find_element_by_text(elements_create_account[:phone]).send_keys phone
  end

  def fill_password(password)
    wait(find_element_by_text(elements_create_account[:pass]), 10)
    find_element_by_text(elements_create_account[:pass]).send_keys password
  end

  def click_btn_create_account()
    wait(find_element_by_text(elements_create_account[:btn_create_account]), 10)
    find_element_by_text(elements_create_account[:btn_create_account]).click
  end
  
  def click_btn_i_am_new()
    wait(find_element_by_text(elements_create_account[:i_am_new]), 10)
    find_element_by_text(elements_create_account[:i_am_new]).click
  end

  def click_btn_submit_code()
    wait(find_element_by_text(elements_create_account[:btn_submit_code]), 10)
    find_element_by_text(elements_create_account[:btn_submit_code]).click
  end  
end