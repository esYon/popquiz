class Troubleshoot
  attr_reader :contents

  def initialize
  @contents = {
    variable: def variable_info
                puts "var info"
              end
    object: def obj_info
              puts "object info"
            end
    class: def class_info
              puts "class info"
           end
    attribute: def attr_info
                puts "attr info"
              end
    message: def msg_info
                puts "Message passing is a form of communication used in parallel programming and object-oriented programming. Communications are completed by the sending of messages (functions, signals and data packets) to recipients."
             end
  }
  end

end
