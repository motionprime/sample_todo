class TasksFormSection < Prime::FormSection
  field :title, label: { text: '' },  input: { placeholder: 'Task title' }
  field :login, title: 'Create', type: :submit, action: :on_submit

  def on_submit
    title = view("title:input").text
    if title.blank?
      table_view.shake and return
    end
    task = Task.new(title: title)
    task.save
    screen.back
  end
end