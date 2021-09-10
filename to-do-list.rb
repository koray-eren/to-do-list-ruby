exit = false
listArray = [
    {name: "Programming", complete: false},
    {name: "Washing", complete: false},
    {name: "Games", complete: false}
]
puts "Hello!"
puts "What's your name?"
user_name = gets.strip
puts "Welcome to your to do list, #{user_name}\n\n"

def print_list(list)
    system("clear")
    puts "===== LIST ====="
    index = 0
    while index < list.length
        complete_marker = (list[index][:complete] ? "X" : " ")
        puts "#{index+1}. #{list[index][:name]} [#{complete_marker}]"
        index += 1
    end
    puts "================\n\n"
end

def add_item(listArray)
    system("clear")
    puts "What do you want to add?"
    listArray.push({name: gets.strip, complete: false} )
    puts
end

def remove_item(listArray)
    system("clear")
    print_list(listArray)
    print "Select an item to remove: "
    item_to_remove_index = gets.strip.to_i - 1
    listArray.delete_at(item_to_remove_index)
end

def complete_an_item(listArray)
    system("clear")
    print_list(listArray)
    print "Select an item to complete: "
    item_to_remove_index = gets.strip.to_i - 1
    listArray[item_to_remove_index][:complete] = true
end

while !exit
    puts "What would you like to do?"
    puts "0. Print To Do List"
    puts "1. Add an item"
    puts "2. Remove an item"
    puts "3. Clear list"
    puts "4. Complete an item"
    puts "5. Exit"
    user_selection = gets.strip.to_i
    puts

    case user_selection
    when 0
        print_list(listArray)
    when 1
        add_item(listArray)
    when 2
        remove_item(listArray)
    when 3
        system("clear")
        listArray.clear()
    when 4
        complete_an_item(listArray)
    when 5
        exit = true
    end

end