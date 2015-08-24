class Id

  attr_accessor :id

  def initialize
  print "Please enter the identificator or 'exit' to close program:"
  end

  def get_id(id)
    @id = id
  end

  def which?
    case @id
    when /\Aexit\Z/
      exit(true)
    when /\A\w[^0-9a-z]+\w[^a-z]\Z/
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
  end
end

# loop do 
#   id = Id.new
#   id.which?
# end
