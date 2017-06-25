irb(main):001:0> def interaction(*names)
irb(main):002:1> names.inject(0) {|sum, number| sum + number}
irb(main):003:1> end
=> :interaction
irb(main):004:0> interaction(1,4,2,3)
=> 10
irb(main):005:0> interaction("A","N")
TypeError: String can't be coerced into Fixnum
        from (irb):2:in `+'
        from (irb):2:in `block in interaction'
        from (irb):2:in `each'
        from (irb):2:in `inject'
        from (irb):2:in `interaction'
        from (irb):5
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):006:0> def identification(*names)
irb(main):007:1> puts names
irb(main):008:1> end
=> :identification
irb(main):009:0> identification("Ana", "Ricardo")
Ana
Ricardo
=> nil
irb(main):010:0> def identification(*names)
irb(main):011:1> names.each {|name| puts name}
irb(main):012:1> end
=> :identification
irb(main):013:0> identification("Ana", "Ricardo")
Ana
Ricardo
=> ["Ana", "Ricardo"]
irb(main):014:0> "Ana" + "ricardo"
=> "Anaricardo"
irb(main):015:0> def identification(*names)
irb(main):016:1> finalname=""
irb(main):017:1> names.each {|name| finalname = finalname + name}
irb(main):018:1> end
=> :identification
irb(main):019:0> identification("Ana", "Ricardo")
=> ["Ana", "Ricardo"]
irb(main):020:0> def identification(*names)
irb(main):021:1> finalname=""
irb(main):022:1> names.each {|name| finalname = finalname + name}
irb(main):023:1> return finalname
irb(main):024:1> end
=> :identification
irb(main):025:0> identification("Ana", "Ricardo")
=> "AnaRicardo"
irb(main):026:0> def x(names)
irb(main):027:1> names.each {|x| puts x}
irb(main):028:1> end
=> :x
irb(main):029:0> x("Ana","Ric","Cost")
ArgumentError: wrong number of arguments (3 for 1)
        from (irb):26:in `x'
        from (irb):29
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):030:0> def x(*names)
irb(main):031:1> names.inject {|memo, name| puts memo puts name}
irb(main):032:1> end
=> :x
irb(main):033:0> x("Ana","Ric","Cost")
Ric
NoMethodError: undefined method `memo' for main:Object
        from (irb):31:in `block in x'
        from (irb):31:in `each'
        from (irb):31:in `inject'
        from (irb):31:in `x'
        from (irb):33
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):034:0> def x(*names)
irb(main):035:1> names.inject do |memo, name|
irb(main):036:2* puts memo
irb(main):037:2> puts name
irb(main):038:2> end
irb(main):039:1> end
=> :x
irb(main):040:0> x("Ana","Ric","Cost")
Ana
Ric

Cost
=> nil
irb(main):041:0> def x(*names)
irb(main):042:1> names.inject do |memo, name|
irb(main):043:2* memo + name
irb(main):044:2> end
irb(main):045:1> end
=> :x
irb(main):046:0> x("Ana","Ric","Cost")
=> "AnaRicCost"
irb(main):047:0> def theBest(*names, options={})
<n name if name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]}
irb(main):049:1> end
SyntaxError: (irb):47: syntax error, unexpected '=', expecting ')'
def theBest(*names, options={})
                            ^
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
<n name if name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]?}
SyntaxError: (irb):50: syntax error, unexpected '}'
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
<name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]?}
SyntaxError: (irb):51: syntax error, unexpected '}'
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
<name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]}
NameError: undefined local variable or method `names' for main:Object
        from (irb):52
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):053:0> def theBest(*names, options={})
< name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]}
irb(main):055:1> end
SyntaxError: (irb):53: syntax error, unexpected '=', expecting ')'
def theBest(*names, options={})
                            ^
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):056:0> def theBest(*names, options={})
irb(main):057:1> theBestP=""
< name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]}
irb(main):059:1> theBestP
irb(main):060:1> end
SyntaxError: (irb):56: syntax error, unexpected '=', expecting ')'
def theBest(*names, options={})
                            ^
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):061:0> def x(options = {} )
irb(main):062:1> end
=> :x
irb(main):063:0> def x(options={} )
irb(main):064:1> end
=> :x
irb(main):065:0> def x(options={} )
irb(main):066:1> options[:x]
irb(main):067:1> end
=> :x
irb(main):068:0> x({x:"Ana"})
=> "Ana"
irb(main):069:0> def theBest(*names, options = {})
<BestP = name if name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]
irb(main):071:2> end
irb(main):072:1> theBestP
irb(main):073:1> end
SyntaxError: (irb):69: syntax error, unexpected '=', expecting ')'
def theBest(*names, options = {})
                             ^
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):074:0> def x(*names, options = {})
irb(main):075:1> end
SyntaxError: (irb):74: syntax error, unexpected '=', expecting ')'
def x(*names, options = {})
                       ^
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):076:0> def x(options = {},*names)
irb(main):077:1> end
=> :x
irb(main):078:0> def theBest(options = {},*names)
<f name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]
irb(main):080:2> end
irb(main):081:1> theBestP
irb(main):082:1> end
=> :theBest
irb(main):083:0> options = {firstLetter:"A",lastletter:"a"}
=> {:firstLetter=>"A", :lastletter=>"a"}
irb(main):084:0> theBest(options,"Ana","Ricardo")
NameError: undefined local variable or method `theBestP' for main:Object
        from (irb):81:in `theBest'
        from (irb):84
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):085:0> def theBest(options = {},*names)
irb(main):086:1> theBestP=""
<f name[0]==options[:firstLetter] && name[name.length-1]==options[:lastletter]
irb(main):088:2> end
irb(main):089:1> theBestP
irb(main):090:1> end
=> :theBest
irb(main):091:0> theBest(options,"Ana","Ricardo")
=> "Ana"
irb(main):092:0> theBest(options,"Ana","Ricardo")
=> "Ana"
irb(main):093:0> options
=> {:firstLetter=>"A", :lastletter=>"a"}
irb(main):094:0> options={firstLetter:"R",lastletter:"o"}
=> {:firstLetter=>"R", :lastletter=>"o"}
irb(main):095:0> theBest(options,"Ana","Ricardo")
=> "Ricardo"
irb(main):096:0> input
NameError: undefined local variable or method `input' for main:Object
        from (irb):96
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):097:0> x=input()
NoMethodError: undefined method `input' for main:Object
        from (irb):97
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):098:0> x=gets
A
=> "A\n"
irb(main):099:0> x
=> "A\n"
irb(main):100:0> x=gets.chomp
A
=> "A"
irb(main):101:0> def opts()
irb(main):102:1> firstLetter = gets("FirstLetter:").chomp
irb(main):103:1> lastLetter = gets("LastLetter:").chomp
irb(main):104:1> options = {firstLetter:firstLetter, lastletter:lastLetter}
irb(main):105:1> end
=> :opts
irb(main):106:0> theBest(opts(),"Ana","Ricardo")
A
a
x
a
d
IRB::Abort: abort then interrupt!
        from (irb):102:in `call'
        from (irb):102:in `gets'
        from (irb):102:in `gets'
        from (irb):102:in `opts'
        from (irb):106
        from C:/Ruby22-x64/bin/irb:11:in `<main>'
irb(main):107:0> def opts()
irb(main):108:1> puts "1st Letter:"
irb(main):109:1> fl = gets().chomp
irb(main):110:1> puts "2nd Letter:"
irb(main):111:1> ll = gets().chomp
irb(main):112:1> options = {firstLetter:fl, lastletter:ll}
irb(main):113:1> end
=> :opts
irb(main):114:0> theBest(opts(),"Ana","Ricardo")
1st Letter:
A
2nd Letter:
a
=> "Ana"
irb(main):115:0> theBest(opts(),"Ana","Ricardo")
1st Letter:
R
2nd Letter:
o
=> "Ricardo"
irb(main):116:0> theBest(opts(),"Ana","Ricardo")
1st Letter:
r
2nd Letter:
e
=> ""
irb(main):117:0> theBest(opts(),"Ana","Ricardo","Tou Rui", "Ruco")
1st Letter:
T
2nd Letter:
i
=> "Tou Rui"
irb(main):118:0> theBest(opts(),"Ana","Ricardo","Tou Rui", "Ruco")
1st Letter:
R
2nd Letter:
o
=> "Ruco"
irb(main):119:0>
