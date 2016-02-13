def __main__(argv)

  opts = Getopts.getopts(
    'vh',
    'version',
    'help',
    'path:',
    'lang:',
  )

  if opts['v'] || opts['version']
    puts "v#{Alto::VERSION}"
  elsif opts['h'] || opts['help'] || opts['path'] == ''
    puts "#{Alto::HELP}"
  elsif opts['path']
    file = Alto::Alto.new(opts)
    file.alto
  else
    puts "#{Alto::HELP}"
  end

end
