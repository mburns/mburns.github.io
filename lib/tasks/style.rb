require 'jsonlint/rake_task'
require 'yamllint/rake_task'

require_relative '../rake_helper'


# mdl -r "MD001,MD002,MD003,MD004,MD005,MD006,MD007,MD009,MD010,MD011,MD012,MD013,MD014,MD018,MD019,MD020,MD021,MD022,MD023,MD024,MD025,MD026,MD027,MD028,MD029,MD030,MD031,MD032,MD033,MD034,MD035,MD036,MD037,MD038,MD039"


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

  desc 'Markdown lint'
  task :markdown do
    # "MD004", # Unordered list style
    # "MD007", # Unordered list indentation
    # "MD033", # Inline HTML
    # "MD034", # Bare URL used
    
    md_rules=[
      "MD001", # Header levels should only increment by one level at a time
      "MD002", # First header should be a top level header
      "MD003", # Header style
      "MD005", # Inconsistent indentation for list items at the same level
      "MD006", # Consider starting bulleted lists at the beginning of the line
      "MD009", # Trailing spaces
      "MD010", # Hard tabs
      "MD011", # Reversed link syntax
      "MD012", # Multiple consecutive blank lines
      "MD013", # Line length
      "MD014", # Dollar signs used before commands without showing output
      "MD018", # No space after hash on atx style header
      "MD019", # Multiple spaces after hash on atx style header
      "MD020", # No space inside hashes on closed atx style header
      "MD021", # Multiple spaces inside hashes on closed atx style header
      "MD022", # Headers should be surrounded by blank lines
      "MD023", # Headers must start at the beginning of the line
      "MD024", # Multiple headers with the same content
      "MD025", # Multiple top level headers in the same document
      "MD026", # Trailing punctuation in header
      "MD027", # Multiple spaces after blockquote symbol
      "MD028", # Blank line inside blockquote
      "MD029", # Ordered list item prefix
      "MD030", # Spaces after list markers
      "MD031", # Fenced code blocks should be surrounded by blank lines
      "MD032", # Lists should be surrounded by blank lines
      "MD035", # Horizontal rule style
      "MD036", # Emphasis used instead of a header
      "MD037", # Spaces inside emphasis markers
      "MD038", # Spaces inside code span elements
      "MD039"  # Spaces inside link text
    ]
    system("mdl -gr \"#{md_rules.join(',')}\" **/*.md")
  end

  desc 'Run all style checks'
  task all: %i[yamllint markdown]
end