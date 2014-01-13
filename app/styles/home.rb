Prime::Styles.define :tasks do
  style :table_cell,
    selection_style: UITableViewCellSelectionStyleNone

  style :cell_title,
    number_of_lines: 0,
    line_break_mode: :word_wrap,
    height: 40,
    text_color: :app_dark,
    top: 5,
    left: 30,
    width: 260,
    font: proc { Prime::Config.font.name.uifont(14) }
end
