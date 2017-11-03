namespace :php do
  task :behat do |_task, args|
    args[:services] = 'web'
    args[:user] = 'build'
    args[:command] = 'php bin/behat'
    Rake::Task['docker:command'].invoke(*args)
  end

  task :phpspec do |_task, args|
    args[:services] = 'web'
    args[:user] = 'build'
    args[:command] = 'php bin/phpspec run'
    Rake::Task['docker:command'].invoke(*args)
  end
end
