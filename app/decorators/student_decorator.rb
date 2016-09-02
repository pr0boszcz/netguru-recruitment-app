class StudentDecorator < BaseDecorator
  def full_name
    "#{first_name} #{last_name}"
  end

  def avg_notes(subject_item)
    notes_array = subject_item.subject_item_notes.map(&:value)
    notes_array = [0] if notes_array.empty?
    notes_avg = notes_array.inject(:+) / notes_array.count.to_f
    sprintf('%.2f' % notes_avg)
  end

  def birth_date
    birthdate.nil? ? "" : birthdate.strftime("%Y-%m_%d")
  end
end
