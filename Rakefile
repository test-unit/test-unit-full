# -*- ruby -*-

Encoding.default_internal = "UTF-8" if defined?(Encoding.default_internal)

require "rubygems"
require "bundler/gem_helper"

task :default => :test

base_dir = File.dirname(__FILE__)

helper = Bundler::GemHelper.new(base_dir)
def helper.version_tag
  version
end

helper.install

task :test do
  $LOAD_PATH.unshift(File.join(base_dir, "lib"))
  require "test/unit/full"
end
