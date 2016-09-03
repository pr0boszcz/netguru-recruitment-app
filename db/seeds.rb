puts "Seeds: start"
TEACHER_TITLES = %w(Dr. Prof. TA)
User.create!(email: 'admin@admin.com',password: 'adminadmin')
LAST_NAMES = %w(Kowalski Nowak Bącki Jerzyna Zaporożec Stęchły Małolepszy Słuchawka Waligóra Zatyka)
FIRST_NAMES = %w(Mieszko Borzygniew Przybowoj Wilkomir Budzigniew Wielebyt)
SUBJECTS_PRE = %w(Historia Geografia Socjologia Zoografia Zoologia Fizyka)
SUBJECTS_MID = %w(Ruchów Poczynań Ludów Stworzeń Społeczeństw Możliwości)
SUBJECTS_POST = %w(Krótkowzrocznych Długouchych Małonosych Kolorowookich Ciemnopodbniebiennych)


3.times do
  Teacher.create!(
    first_name: FIRST_NAMES.sample,
    last_name: LAST_NAMES.sample,
    academic_title: TEACHER_TITLES.sample
  )
end

teachers = Teacher.all
5.times do
  SubjectItem.create!(
    title: "#{SUBJECTS_PRE.sample} #{SUBJECTS_MID.sample} #{SUBJECTS_POST.sample}",
    teacher: teachers.sample
  )
end

25.times do
  Student.create!(
    first_name: FIRST_NAMES.sample,
    last_name: LAST_NAMES.sample
  )
end

students = Student.all
SubjectItem.all.each do |subject_item|
  subject_item.students << students.sample(rand(1..4))
end

SubjectItem.all.each do |subject_item|
  subject_item.students.each do |student|
    rand(1..5).times do
      subject_item.subject_item_notes << SubjectItemNote.create(student: student,
                                                                subject_item: subject_item,
                                                                value: rand(1..6))
    end
  end
end

puts "Seeds: done"
