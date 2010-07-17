module Test
  module Unit
    module Full
      VERSION = "0.0.2"
    end
  end
end

require 'test/unit'
require 'test/unit/runner/gtk2'
require 'test/unit/runner/fox'
require 'test/unit/runner/tk'
require 'test/unit/notify'
