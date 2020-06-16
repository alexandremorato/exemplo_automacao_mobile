class PageTutorial < Locators

    def elements_tutorial
        {
            btn_skip: "SKIP",
            btn_next: "NEXT",
            btn_done: "DONE"
        }
    end

    def btn_skip()
        wait(find_element_by_text(elements_tutorial[:btn_skip]), 10)
        find_element_by_text(elements_tutorial[:btn_skip]).click
    end

    def btn_next()
        wait(find_element_by_text(elements_tutorial[:btn_next]), 10)
        find_element_by_text(elements_tutorial[:btn_next]).click
    end
    
    def btn_done()
        wait(find_element_by_text(elements_tutorial[:btn_done]), 10)
        find_element_by_text(elements_tutorial[:btn_done]).click
    end
end    