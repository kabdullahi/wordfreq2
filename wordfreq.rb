require 'csv'

class Wordfreq
  STOP_WORDS = ['a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
    'has', 'he', 'i', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the', 'to',
    'were', 'will', 'with']

  def initialize(filename)
    file_name = CSV.read(filename)
    @something = file_name
  end

  def frequency(word)
    # run a interation
  end

  def frequencies
    # run a interation
  end

  def top_words(number)
    # sort_by
  end

  def print_report
    # run a interation
    # puts " #{word} | #{count} #{stars} "
  end
end

if __FILE__ == $0
  filename = ARGV[0]
  if filename
    full_filename = File.absolute_path(filename)
    if File.exists?(full_filename)
      wf = Wordfreq.new(full_filename)
      wf.print_report
    else
      puts "#{filename} does not exist!"
    end
  else
    puts "Please give a filename as an argument."
  end
end
