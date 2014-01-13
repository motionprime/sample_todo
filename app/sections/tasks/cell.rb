class TasksCellSection < Prime::Section
  container height: 50
  element :title, text: proc { model.title }
end