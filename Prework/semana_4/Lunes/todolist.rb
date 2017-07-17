class Item < TodoList
  attr_accessor :item, :checked, :personal, :code

  def initialize(args={})
    @item = args[:item]
    @checked = args[:checked]
    @personal = args[:personal]
    @code = args[:code]
  end
end

class TodoList 
  attr_reader :list
  def initialize
    @list = []
    parse_csv_list
  end

  def parse_csv_list
    CSV.foreach('tareas.csv', headers: true, header_converters: :symbol) do |row|
      @list << Item.new(row)
      puts @list
    end
  end

  def add(item)
    @list << Item.new(item: item)
    save
  end

  def delete(item)
    @list.delete_if{|name| name.item == item}
    save
  end

  def check_off(item)
    item = item.split[0]
    @list.map! do |el|
      el.checked = "X" if el.item.downcase.include?(item)
      el
    end
    save
  end

  def check_off_all(items)
    @list.map!{|item| item.checked = "X"; item}
    save
  end

  def uncheck_all(items)
    @list.map!{|item| item.checked = nil; item}
    save
  end

  def delete_all(items)
    @list = []
    save
  end

  def save
    CSV.open('tareas.csv', 'w') do |file|
      file << ["item", "checked", "personal", "code"]
      list.each{|item| file << [item.item, item.checked, item.personal, item.code]}
    end
  end

end


task = TodoList.new

task.parse_csv_list
task.add("comprar tamales")
task.delete("comprar tamales")