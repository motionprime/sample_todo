class TasksIndexCellSection < Prime::Section
  container height: 60
  element :title, text: proc { model.title }

  add_sliding_action_button :finish, title: 'Finish', action: :finish

  def finish
    model.delete
    table.delete_cell_sections(self)
  end
end