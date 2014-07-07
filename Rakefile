# -*- ruby -*-

require 'pathname'

base_dir = Pathname(__FILE__).dirname.expand_path
test_unit_dir = (base_dir.parent + "test-unit").expand_path
test_unit_lib_dir = test_unit_dir + "lib"
lib_dir = base_dir + "lib"

$LOAD_PATH.unshift(test_unit_lib_dir.to_s)
$LOAD_PATH.unshift(lib_dir.to_s)

begin
  require 'test/unit/full'
rescue LoadError
end

require 'rubygems'
require 'hoe'

Test::Unit.run = true

version = Test::Unit::Full::VERSION
ENV["VERSION"] = version
Hoe.spec('test-unit-full') do
  self.version = version

  developer('Kouhei Sutou', 'kou@clear-code.com')

  extra_deps.concat([["test-unit"],
                     ["test-unit-runner-gtk2"],
                     ["test-unit-runner-tk"],
                     ["test-unit-runner-fox"],
                     ["test-unit-notify"],
                     ["test-unit-rr"]])
end

task :tag do
  message = "Released Test::Unit::Full #{version}!"
  sh "git", "tag", version, "-m", message
  sh "git", "push", "--tags"
end

# vim: syntax=Ruby
