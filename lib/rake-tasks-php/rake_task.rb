namespace :php do
  def parse_php_args(args)
    args = args[2..-1] if args.length > 2
    args
  end

  task :behat do
    args = parse_php_args(ARGV)
    services_from_args(services: %w[web]).exec('build', "php bin/behat #{args.join(' ')}")
    exit $?.to_i
  end

  task :composer do
    args = parse_php_args(ARGV)
    services_from_args(services: %w[web]).exec('build', "composer #{args.join(' ')}")
    exit $?.to_i
  end

  task :phpspec do
    args = parse_php_args(ARGV)
    args = ['run'] if args.empty?
    services_from_args(services: %w[web]).exec('build', "php bin/phpspec #{args.join(' ')}")
    exit $?.to_i
  end
end
