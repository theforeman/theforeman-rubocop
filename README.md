# theforeman-rubocop

![Foreman](https://raw.githubusercontent.com/theforeman/foreman-graphics/master/logo/foreman_medium.png)

Set of RuboCop styles for [Foreman](https://theforeman.org) and its plugins.

## Introduction

As we are one organization and almost one project, it would be nice to keep the similar standards for code quality.

Instead of defining the rules for plugin per plugin, plugins can include defaults from this gem.

## Usage

```ruby
# Gemfile
source 'https://ezr-ondrej:dc069ebb028fa13cf880764491a921ef28724340@rubygems.pkg.github.com/ezr-ondrej/theforeman-rubocop' do
  gem 'theforeman-rubocop', '~> 0.0.1'
end
```

And configure in the `.rubocop.yml`.

### Easiest config - get all

```yaml
inherit_gem:
  theforeman-rubocop:
    - all.yml
```

### Basic style and performance cops
```yaml
inherit_gem:
  theforeman-rubocop:
    - all.yml
```

### Choose just some cops

Cops are splited in categories for your convenience, so you can opt-out some cops.

 .rubocop.yml
```yaml
inherit_gem:
  theforeman-rubocop:
    - rules/style.yml
    - rules/ruby_target.yml
    - rules/performance.yml
    - rules/rails.yml
    - rules/minitest.yml
```
