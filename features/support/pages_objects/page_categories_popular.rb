class PageCategoriesPopular < Locators

  def elements_categories_popular
    {
      categories: "Categories",
      popular: "Popular"
    }
  end  

  def get_title_categories()
    wait(find_element_by_text(elements_categories_popular[:categories]), 10)
    find_element_by_text(elements_categories_popular[:categories]).text
  end

  def get_title_popular()
    wait(find_element_by_text(elements_categories_popular[:popular]), 10)
    find_element_by_text(elements_categories_popular[:popular]).text
  end
end  