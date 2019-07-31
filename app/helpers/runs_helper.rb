module RunsHelper

  #Helper method to edit runs. html_safe prevents Rails from escaping this string
  def user_edit_run(text, href)
    "<a href='#{href}'>#{text}</a>".html_safe
  end

  #Helper method to delet runs. html_safe prevents Rails from escaping this string
  #You could always test in the console to see what html a link_to generates, for example: helper.link_to "delete", "<url>", :method => 'delete'
  def user_delete_run(text, href, method)
    "<a data-method=\"delete\" href=\'#{href}\'>#{text}</a>".html_safe
  end
end
