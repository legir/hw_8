print 'Please enter the identificator:'
id = gets

case id
when /\A\w[^a-z]+\Z/
  print "Введена константа\n"
when /\A[a-z]+(\w[^A-Z])*\Z/
  print "Введено имя переменной или функции(метода)\n"
when /\A[A-Z]+\w*\Z/
  print "Введен класс\n"
when /\A\@{1}[a-z]+(\w[^A-Z])*\Z/
  print "Введено свойство обьекта\n"
when /\A\@{2}[a-z]+(\w[^A-Z])*\Z/
  print "Введено свойство класса\n"
else
  print "Идентификатор не корректный\n"
end
