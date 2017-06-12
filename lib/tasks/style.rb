require 'jsonlint/rake_task'
require 'yamllint/rake_task'

require_relative '../rake_helper'

namespace :style do
  desc 'YAML lint'
  YamlLint::RakeTask.new do |t|
    t.paths = %w[
      **/.*.{yml,yaml}
      **/*.{yml,yaml}
    ]
    t.exclude_paths = %w[
      vendor/**/.*.{yml,yaml}
      vendor/**/*.{yml,yaml}
    ]
  end

  desc 'JSON lint'
  JsonLint::RakeTask.new do |t|
    t.paths = %w[
      **/*.json
    ]
  end

  desc 'Run all style checks'
  task all: %i[jsonlint yamllint]
end