puts ("Hello"); # starts new line
print ("Hello"); # same line
name = "Tony"
num = 25;
flag = true;

puts ("Hello" + name);
puts (num.to_s); #.to_i  .to_f  .to_s   int float string
puts name.include? "on";

puts("Enter a number");
num = gets.chomp;
puts("You entered "+ num);

arraysA = [ "a" , "b" , "c"];
puts arraysA[0];
puts arraysA[-1];