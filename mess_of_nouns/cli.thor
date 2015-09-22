require "thor"
require 'pry'
require_relative './mess'

class Util
  def self.recurse_ancestors(klass, second_klass)
    klass.ancestors.each do |ancestor|
      puts ancestor.ancestors
      if ancestor.ancestors.include?(second_klass)
        return true
      elsif ancestor.ancestors.size == 1
        return false
      else
        recurse_ancestors(ancestor, second_klass)
      end
    end
  end
end

class MessCli < Thor
  desc "make_mess", "it's fun to make a mess!"
  def make_mess
    loop do
      string = ask('Speak to me plz:')
      begin
        if string == 'stop'
          binding.pry
        elsif string =~ /\?/i
          noun_matches = string.match(/^are all (.+) (.+)./i)
          first_noun = noun_matches[1]
          second_noun = noun_matches[2]
          first_class_name = first_noun.split(' ').map(&:capitalize).join('')
          second_class_name = second_noun.split(' ').map(&:capitalize).join('')
          first_class = Module.const_get(first_class_name)
          second_class = Module.const_get(second_class_name)

          if first_class.ancestors.include?(second_class)
            puts "Yes."
          else
            ancestor_somewhere = Util.recurse_ancestors(first_class, second_class)

            if ancestor_somewhere
              puts "Yes."
            else
              puts "I don't know."
            end
          end
        else
          Mess.new(string)
        end
      rescue => e
        puts 'You make no sense.'

        # raise e
      end
    end
  end

end
