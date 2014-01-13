class HomeScreen < ApplicationScreen
  title 'Home'

  def render
    @main_section = TasksTableSection.new(screen: self)
    @main_section.render
    set_navigation_right_button 'Add', action: :open_new_task
  end

  def open_new_task
    open_screen :new_task
  end

  def on_return
    @main_section.reload_data
  end
end