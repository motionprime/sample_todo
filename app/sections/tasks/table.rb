class TasksTableSection < Prime::TableSection
  def table_data
    Task.all.map do |event|
      TasksCellSection.new(model: event)
    end
  end
end