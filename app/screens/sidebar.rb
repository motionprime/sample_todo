class SidebarScreen < Prime::Screen
  section :sidebar_table

  def open_home
    app_delegate.open_screen 'tasks#index'
  end
end