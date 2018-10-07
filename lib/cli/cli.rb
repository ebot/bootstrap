module Replace
  ## Mut's command line interface.
  module CLI
    ## Main module for the Mut command line interface
    class Main
      ## Create a new command line interface.
      def initialize(command, _args = nil)
        case command
        when 'about' then about
        when 'help'  then help
        else unknown(command)
        end
      end

      private

      def help
        print_header
        puts "about  Prints information about this program.\n"
      end

      def unknown(command)
        print_header
        puts "I do not know what you mean by #{command}"
      end

      def about
        names = ['name - first.last@somewhere.com']
        print_header

        puts " Replace with short description.\n\n" \
             " Created By:\n"
        names.each { |name| puts "   #{name}" }
      end

      def print_header
        puts " ------------------\n" \
             " |Replace #{VERSION.rjust(8, ' ')}|\n" \
             " ------------------\n" \
             "_____________________________________________________________\n\n"
      end
    end
  end
end
