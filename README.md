[![Gem Version](https://badge.fury.io/rb/theforeman-rubocop.svg)](https://badge.fury.io/rb/theforeman-rubocop)

# theforeman-rubocop

![Foreman](https://raw.githubusercontent.com/theforeman/foreman-graphics/master/logo/foreman_medium.png)

Set of RuboCop styles for [Foreman](https://theforeman.org) and its plugins.

## Introduction

As we are one organization and almost one project, it would be nice to keep the similar standards for code quality.

Instead of defining the rules for plugin per plugin, plugins can include defaults from this gem.

## Usage

Add the dependency into Gemfile

```ruby
# Gemfile
gem 'theforeman-rubocop', '~> 0.0.4'
```

or gemspec

```ruby
s.add_development_dependency 'theforeman-rubocop', '~> 0.0.4'
```

and configure in the `.rubocop.yml`.

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

### All cops, including newly introduced ones
```yaml
inherit_gem:
  theforeman-rubocop:
    - edge.yml
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

AllCops:
  NewCops: disable
```
