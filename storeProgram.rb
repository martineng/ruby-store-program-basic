#Import Class File
require_relative 'Contact.rb'
require_relative 'ContactList.rb'

class StoreProgram

  def main
    list = ContactList.new
    index = ""

    puts "\nWelcome.\n"

    while (index != "0")
      index = menu(index) #Open Main Menu
      list = openSubMenu(index, list) #Open selected Menu
    end #END while

    puts "\n==EXIT=="
  end #END main()

  def menu(inIndex)
    puts "\n\nPlease enter index"
    puts "\n 1 - Create New Contact"
    puts "\n 2 - Delete Contact"
    puts "\n 3 - Sort Contacts by Name"
    puts "\n 4 - View List"
    puts "\n 0 - Exit "
    puts "Enter: "

    inIndex = gets.chomp

    inIndex #Return index
  end #END menu()

  def openSubMenu(inIndex, inList)

    case
    when inIndex == "1" #Create New Contact
      inList = createNewContact(inList)
      #break
    when inIndex == "2" #Delete Contact
      displayList(inList)
      inList = removeContact(inList)
      #break
    when inIndex == "3" #Sort Contact by Name
      # Display sorted list stright away after sort
      # (without replacing the original list)
      displayList(sortContact(inList))
      #break
    when inIndex == "4" #View List
      displayList(inList)
      #break
    when inIndex = "0"
      #break
    else
      puts "\n[INVALID INPUT]\n"
    end #END case

    inList #Return the entire List
  end #END openSubMenu()

  def createNewContact(inList)
    # This method handle new contact,
    # ask for information
    # then push into the array

    puts "\nPlease Enter New Contact Name: "
    newContact = Contact.new(gets.chomp)
    #puts "[[#{newContact.name}]]"
    puts "\nAddress: "
    newContact.address = gets.chomp

    puts "\nLocation: "
    newContact.location = gets.chomp

    puts "\nEmail: "
    newContact.email = gets.chomp

    puts "\nTelephone: "
    newContact.telephone = gets.chomp

    puts "\nDate of Birth: "
    newContact.dob = gets.chomp

    puts "\nFavourite?: "
    newContact.favourite = gets.chomp

    inList.add(newContact) # add into array

    inList #Return the entire list
  end #createNewContact

  def displayList(inList)
    # This function print the entire array
    index = 0 # For the Loop
    max = inList.counter # To get the highest postion in the array

    while index < max
      puts " [#{index+1}] - #{inList.contactList(index).name}"
      index+= 1
    end #END for
  end #END displayList()

  def removeContact(inList)
    puts "\n\nPlease enter which contact to delete"

    # Get the position of what user input
    # position will be -1 because array start from 0
    inList.remove(inList.contactList((gets.chomp.to_i)-1))

    inList #Return the entire list
  end #END removeContact()

  def sortContact(inList)
    sortedList = ContactList.new

    #My custom sort!(But not somehting special)
    index = 0
    max = inList.counter

    sortedList.contactListWhole = inList.contactListWhole.sort{ |x,y| x.name <=> y.name }
    sortedList.counter = inList.counter

    sortedList #Return the entire object
  end #END sortContact
end#END class


#Run the Program
runProgram = StoreProgram.new
runProgram.main
