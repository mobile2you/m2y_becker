# frozen_string_literal: true

require 'm2y_becker/configuration/configuration'
require 'm2y_becker/constants/constants'
require 'm2y_becker/modules/base'
require 'm2y_becker/models/cdt_models'
require 'm2y_becker/helpers/token_helper'
require 'm2y_becker/modules/auth'
require 'm2y_becker/modules/cdt_bill'
require 'm2y_becker/modules/cdt_cycle'
require 'm2y_becker/modules/cdt_group'
require 'm2y_becker/modules/cdt_event'

require_relative "m2y_becker/version"

module M2yBecker
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end
end
