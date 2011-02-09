#--
#
# Author:: Kouhei Sutou
# Copyright::
#   * Copyright (c) 2008-2011 Kouhei Sutou <kou@clear-code.com>
# License:: LGPLv2+

module Test
  module Unit
    module Full
      VERSION = "0.0.4"
    end
  end
end

require 'test/unit'
require 'test/unit/runner/gtk2'
require 'test/unit/runner/fox'
require 'test/unit/runner/tk'
require 'test/unit/notify'
require 'test/unit/rr'
