class TasksCellSection < Prime::Section
  container height: 50
  element :title, text: proc { model.title }

  add_sliding_action_button :finish, title: 'Finish', action: :finish

  def finish
    model.delete

    if container_view
      table_view = table.table_view
      index = table_view.indexPathForCell(container_view)
      table_view.beginUpdates
      table.data.delete(self)
      table_view.deleteRowsAtIndexPaths [index], withRowAnimation: UITableViewRowAnimationLeft
      table_view.endUpdates
    end
  end
end