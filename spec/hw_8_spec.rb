require 'spec_helper'
require_relative '../hw_8'

describe Id do
  let(:id) do
    @id = Id.new
  end

  it 'Определяет принадлежность к константе' do
    id.get_id('LOLY_12')
    expect { @id.which? }.to output("Введена константа\n").to_stdout
  end

  it 'Определяет принадлежность к переменной или функции(методу)' do
    id.get_id('lolipop_1223')
    expect { @id.which? }.to output("Введено имя переменной или функции(метода)\n").to_stdout
  end

  it 'Определяет принадлежность к классу' do
    id.get_id('Loli_12')
    expect { @id.which? }.to output("Введен класс\n").to_stdout
  end

  it 'Определяет принадлежность к свойству объекта' do
    id.get_id('@weight')
    expect { @id.which? }.to output("Введено свойство обьекта\n").to_stdout
  end

  it 'Определяет принадлежность к свойству класса' do
    id.get_id('@@color')
    expect { @id.which? }.to output("Введено свойство класса\n").to_stdout
  end

  it 'Определяет некорректное имя' do
    id.get_id('_eriu_277')
    expect { @id.which? }.to output("Идентификатор не корректный\n").to_stdout
  end

  it 'Определяет некорректное имя c @' do
    id.get_id('@Eriu_277')
    expect { @id.which? }.to output("Идентификатор не корректный\n").to_stdout
  end

  it 'Определяет некорректное имя c @@' do
    id.get_id('@@Eriu_277')
    expect { @id.which? }.to output("Идентификатор не корректный\n").to_stdout
  end
end
