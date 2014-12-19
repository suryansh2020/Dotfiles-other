# NOTE: Run `gem install awesome_print` for 'ap' library.
#
require 'irb/completion'

# appearance
require 'pp'
pretty_printer = 'pp'

begin
  require 'ap'
  pretty_printer = 'ap'
rescue LoadError
end

IRB::Irb.class_eval do
  define_method :output_value do
    __send__ pretty_printer, @context.last_value
  end
end

# settings
IRB.conf[:AUTO_INDENT] = true
IRB.conf[:SAVE_HISTORY] = 10000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb-history"
IRB.conf[:USE_READLINE] = true
