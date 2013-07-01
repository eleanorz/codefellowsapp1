
# starting
puts "Started program . . . . ."

print "\n . \n . \n. \n . \n. \n Welcome to Library!"     # prints the welcome message



# Building in some examples to library array
# If I had more time, ideally would find larger index of books and pulled them into an array w/o typing in manually?
#in the interest of expediency, just added short list of common books.
#
    
arr1=[["Clemens, Samuel", "Adventures of Huckleberry and Finn, The"," Satire"], ["Crichton, Michael, Jurassic Park, Science Fiction"],
["King, Stephen", "Shining, The", "Horror"],["Lowry, Lois", "Giver, The", "Science Fiction"], ["Orwell, George", "Animal Farm", "Satire;"], 
["Poe Edgar Allen", "The Cask of Amontillado", "Horror"]]


#first prompt for the user to navigate library
    
print ".........What would you like to do?:  \n A ~ browse shelves \n B ~ add new book \n C ~ print complete catalogue \n ? "     # prints the welcome message
    
choice=""
choice=gets

#
#Option A/ browsing shelves
#
if choice.chomp.capitalize == "A"
    print "Which shelf would you like to browse? \n 1 ~ Horror Fiction\n 2 ~ Satire \n 3 ~ Science Fiction \n ? "
    
    genre=""
    genre=gets
    
    print " /n.. /n you selected:: "+ genre
    
    ## search array for matching items, and then print out those items
    
    
   # print arr1[3]  # gives the user a view of the genre they are looking for 
   
    
#
#
#Moving onto choice B/ Adding in a new item to library
#
    
elsif choice.chomp.capitalize == "B"
    print "you selected B; \n What new title would you like to add? \n:: "
    ttl=""
    ttl=gets

    print "What is the author's last name?"
    
    lastName=""
    lastName=gets
    
    print "First name?"
    firstName=""
    firstName=gets
    
    print "Genre?"
    genr=""
    genr=gets
    
    arrB=[]
    arrB << lastName
    arrB << firstName
    arrB << ttl
    arrB << genr
    
    arr1 << arrB
    
    print "Here's what we got from you:: \n"
    print arrB
    print " \n  has been succesfully added into the Library, thanks!"
    

#
#
#User makes choice C
#
#
    
elsif choice.chomp.capitalize == "C"
    print "you selected C, here is our current collection::\n\n" 
        
    arr1.each { |a| print a,"\n \n" }
    "\n End of Collection"
    
else #No selection has been made by user;  Ideally would loop back up to the start, but that takes on a knowledge I don't yet have in Ruby
    print "He or She chose...  /n ......unwisely."
    
end