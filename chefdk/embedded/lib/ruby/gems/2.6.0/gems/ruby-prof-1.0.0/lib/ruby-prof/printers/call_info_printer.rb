# encoding: utf-8

module RubyProf
  # Prints out the call graph based on CallInfo instances. This
  # is mainly for debugging purposes as it provides access into
  # into RubyProf's internals.
  #
  # To use the printer:
  #
  #   result = RubyProf.profile do
  #     [code to profile]
  #   end
  #
  #   printer = RubyProf::CallInfoPrinter.new(result)
  #   printer.print(STDOUT)
  class CallInfoPrinter < AbstractPrinter
    TIME_WIDTH = 0

    private

    def print_header(thread)
      @output << "Thread ID: #{thread.id}\n"
      @output << "Fiber ID: #{thread.fiber_id}\n"
      @output << "Total Time: #{thread.total_time}\n"
      @output << "Sort by: #{sort_method}\n"
      @output << "\n"
    end

    def print_methods(thread)
      visitor = CallInfoVisitor.new(thread.root_methods)

      visitor.visit do |call_info, event|
        if event == :enter
          @output << "  " * call_info.depth
          @output << call_info.target.full_name
          @output << " ("
          @output << "tt:#{sprintf("%#{TIME_WIDTH}.2f", call_info.total_time)}, "
          @output << "st:#{sprintf("%#{TIME_WIDTH}.2f", call_info.self_time)}, "
          @output << "wt:#{sprintf("%#{TIME_WIDTH}.2f", call_info.wait_time)}, "
          @output << "ct:#{sprintf("%#{TIME_WIDTH}.2f", call_info.children_time)}, "
          @output << "call:#{call_info.called}, "
          @output << ")"
          @output << "\n"
        end
      end
    end

    def print_footer(thread)
    end
  end
end
