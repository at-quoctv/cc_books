module ApplicationHelper
<<<<<<< HEAD
=======
  def full_title(page_title = '')
    base_title = t "home.book"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
>>>>>>> signup
end
