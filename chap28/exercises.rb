puts "Statement true && true is #{true && true}"

puts "Statement false && true is #{false && true}"

puts "Statement 1 == 1 && 2 ==1 is #{1 == 1 && 2 ==1}"

puts "Statement 'test' == 'test' is #{"test" == "test"}"

puts "Statement 1 == 1 || 2 != 1 is #{1 == 1 || 2 != 1}"

puts "Statement true && 1 == 1 is #{true && 1 == 1}"

puts "Statement false && 0 != 0 is #{false && 0 != 0}"

puts "Statement true || 1 == 1 is #{true || 1 == 1}"

puts "Statement 'test' == 'testing' is #{"test" == "testing"}"

puts "Statement 1 != 0 && 2 == 1 is #{1 != 0 && 2 == 1}"

puts "Statement 'test' != 'testing' is #{"test" != "testing"}"

puts "Statement 'test' == 1 is #{"test" == 1}"

puts "Statement !(true && false) is #{!(true && false)}"

puts "Statement !(1 == 1 && 0 != 1) is #{!(1 == 1 && 0 != 1)}"

puts "Statement !(10 == 1 || 1000 == 1000) is #{!(10 == 1 || 1000 == 1000)}"

puts "Statement !(1 != 10 || 3 == 4) is #{!(1 != 10 || 3 == 4)}"

puts "Statement !('testing' == 'testing' && 'Zed' == 'Cool Guy') is #{!("testing" == "testing" && "Zed" == "Cool Guy")}"

puts "Statement 1 == 1 && (!('testing' == 1 || 1 == 0)) is #{1 == 1 && (!("testing" == 1 || 1 == 0))}"

puts "Statement 'chunky' == 'bacon' && (!(3 == 4 || 3 == 3)) is #{"chunky" == "bacon" && (!(3 == 4 || 3 == 3))}"

puts "Statement 3 == 3 && (!('testing' == 'testing' || 'Ruby' == 'Fun')) is #{3 == 3 && (!("testing" == "testing" || "Ruby" == "Fun"))}"
