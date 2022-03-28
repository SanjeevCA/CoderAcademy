$option = ""
$array_products = ["Coffee", "Tea", "Chai", "Muffin", "Cheesecake", "Bagel"]

def menuOptions
    system 'clear'
    puts "=========================================="
    puts " Menu Options"
    puts "=========================================="
    puts
    puts "      ------------------------------------------"
    puts "      1. See Menu"
    puts "      2. Add a new product to the menu"
    puts "      3. Edit the product details"
    puts "      4. Remove a specfic product from the menu"
    puts "      5. Exit"
    puts "      ------------------------------------------"
    puts
    print "Enter your option: "
    $option =gets.chomp
    puts
end

def showMenu
    system 'clear'
    puts "=========================================="
    puts "Welcome to our cafe!"
    puts "Here is our menu."
    puts "=========================================="
    puts
    $array_products.each_with_index do |item, i|
        puts "      #{i + 1}.   #{item}"
    end
end


def exitCafe
    system 'clear'
    puts "=========================================="
    puts "Thank you! See you next time!"
    puts "=========================================="
end

def invalid
    system 'clear'
    puts "=========================================="
    puts "Invalid entry"
    puts "=========================================="
end

def addProduct
    system 'clear'
    puts "=========================================="
    puts "Add a product to the menu"
    puts "=========================================="
    puts
    print "Item to ADD: "
    $array_products.push(gets)
end

def editProduct
    system 'clear'
    puts "=========================================="
    puts "Edit the product details"
    puts "=========================================="
end

def removeProduct
    system 'clear'
    puts "=========================================="
    puts "Remove a specfic product from the menu"
    puts "=========================================="
    puts
    print "Item to REMOVE: "
    item = gets.chomp
    $array_products.delete(item)
end

while $option != "5"

    # system 'clear'

    menuOptions
    
    case $option
    when "1"
        showMenu
    when "2"
        addProduct
    when "3"
        editProduct
    when "4"
        removeProduct
    when "5"
        exitCafe
        next
    else
        invalid
    end
    puts
    print "Press ENTER to continue..."
    gets
    system 'clear'

end
puts
puts