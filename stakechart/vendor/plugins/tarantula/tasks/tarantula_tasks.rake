namespace :tarantula do

  desc 'Run tarantula tests and (Mac only) open results in your browser.'
  task :test do
    rm_rf "tmp/tarantula"
    task = Rake::TestTask.new(:tarantula_test) do |t|
      t.libs << 'test'
      t.pattern = 'test/tarantula/**/*_test.rb'
      t.verbose = true
    end

    begin
      Rake::Task[:tarantula_test].invoke
    rescue RuntimeError => e
      puts e.message
    end
    Dir.glob("tmp/tarantula/**/index.html") do |file|
      if PLATFORM['darwin']
        system("open #{file}")
      elsif PLATFORM[/linux/]
        system("firefox #{file}")
      else
        puts "You can view tarantula results at #{file}"
      end
    end
  end

  desc 'Generate a default tarantula test'
  task :setup do
    mkdir_p "test/tarantula"
    template_path = File.expand_path(File.join(File.dirname(__FILE__), "..", "template", "tarantula_test.rb"))
    cp template_path, "test/tarantula/"
  end
end
