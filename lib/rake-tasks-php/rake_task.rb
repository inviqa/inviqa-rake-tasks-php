namespace :php do
  task :behat do
    services_from_args(services: %w[web]).exec('build', 'php bin/behat')
  end

  task :phpspec do
    services_from_args(services: %w[web]).exec('build', 'php bin/phpspec run')
  end
end
