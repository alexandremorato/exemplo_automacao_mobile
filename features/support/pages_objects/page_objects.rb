module PageObjects

    def tutorial
        PageTutorial.new 
    end

    def create_accounts
        PageCreateAccount.new
    end
    
    def categories_popular
        PageCategoriesPopular.new
    end    
end