# frozen_string_literal: true

require 'm2y_adiq/configuration/configuration'
require 'm2y_adiq/constants/constants'
require 'm2y_adiq/modules/base'
require 'm2y_adiq/modules/onboarding'
require 'm2y_adiq/helpers/token_helper'
require 'm2y_adiq/modules/auth'
require 'm2y_adiq/modules/taxes'
require 'm2y_adiq/modules/transactions'

require_relative "m2y_adiq/version"

module M2yAdiq
  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    config = configuration
    yield(config)
  end
end
