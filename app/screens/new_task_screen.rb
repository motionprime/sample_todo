class NewTaskScreen < ApplicationScreen
  title 'Add new task'

  def render
    @main_section = TasksFormSection.new(screen: self)
    @main_section.render
    set_navigation_back_button('Cancel')
  end
end
