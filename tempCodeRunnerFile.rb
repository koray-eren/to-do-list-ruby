def complete_an_item(listArray)
    system("clear")
    print_list(listArray)
    print "Select an item to complete: "
    item_to_remove_index = gets.strip.to_i - 1
    listArray[item_to_remove_index][:complete] = true
