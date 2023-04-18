class LoginPage < SitePrism::Page
    set_url ''

    element :useremail, '#inlineUserEmail'
    element :userpass, '#inlineUserPassword'



    def login
        useremail.set 'lucas.test22@hotmail.com'
        click_button 'Entrar com e-mail'
        userpass.set 'Pass_2023@22'
        find('button[name="submit"]').click
    end
end