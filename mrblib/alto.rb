def __main__(argv)

  opt = Getopts.getopts(
    'vh',
    'version',
    'help',
    'path:'
  )

  if opt['v'] || opt['version']
    puts "v#{Alto::VERSION}"
  elsif opt['h'] || opt['help'] || opt['path'] == ''
    puts "#{Alto::HELP}"
  elsif opt['path']
    file = Alto::Alto.new(opt)
    file.alto
  else
    puts "#{Alto::HELP}"
  end

end
