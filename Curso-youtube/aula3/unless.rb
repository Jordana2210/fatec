product_status = "closed"

unless product_status == "open"
    check_change = "Can"
else
    check_change = "Can not"
end

puts "You #{check_change} change the product"