puts ("Hello"); # starts new line
print ("Hello"); # same line
name = "Tony"
num = 25;
flag = true;

puts ("Hello" + name);
puts (num.to_s); #.to_i  .to_f  .to_s   int float string
puts name.include? "on";

#puts("Enter a number");
#num = gets.chomp;
#puts("You entered "+ num);

arraysA = [ "a" , "b" , "c"];
puts arraysA[0];
puts arraysA[-1];

def add(num1=6,num2=2)
     return num1+num2
end

puts add(3,4)
puts add(4,5.5)
puts add("hello"," world")

if 1 > 3
     puts 1;

elsif 3 > 1
     puts 2;
end

if "c" > "a"
     puts "c";
end

day = "Sunday"

case day
when "Monday"
     puts "Work"
when "Sunday"
     puts "Rest"

end

#Dictionary

key = {
     "A" => 33141,
     "B" => 84128,
     "C" => 321818
}

puts key["A"];
key["B"] = "A";
puts key["B"];

index = 1

#while index != 10 
#     puts index
#     index += 1
#end

str = "Amadeus , Amadeus  ,wolfgang";
str[4,10] = "Steins";
puts str;
sub1 = str.sub("Amad","Gate"); #replaces first occurence # use "" or //
puts sub1;
sub2 = sub1.sub("wolfgang") {|o| o.reverse}

puts sub2;
puts str.index(/seus/);

# include? boolean if string includes substring
puts sub2.include? "flow"

x = "12"
y = "12"

if x == y 
     puts x
else 
     puts "13"
end
     