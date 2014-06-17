# Demonstrates examining the state of the Ruby Virtual Machine
code = RubyVM::InstructionSequence.compile('a = 1; puts 1 + a')
puts code.disassemble
