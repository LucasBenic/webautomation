class LoginPage < SitePrism::Page
    
    element :useremail, '#inlineUserEmail'
    element :userpass, '#inlineUserPassword'

    #set your credentials
    $email = 'lucas.test22@hotmail.com'
    $password = 'Pass_2023@22'

    def login
        useremail.set($email)
        click_button 'Entrar com e-mail'
        userpass.set($password)
        find('button[name="submit"]').click
    end
end