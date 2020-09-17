# theforeman-rubocop

![Foreman](https://raw.githubusercontent.com/theforeman/foreman-graphics/master/logo/foreman_medium.png)

Set of RuboCop styles for [Foreman](https://theforeman.org) and its plugins.

## Introduction

As we are one organization and almost one project, it would be nice to keep the similar standards for code quality.

Instead of defining the rules for plugin per plugin, plugins can include defaults from this gem.

## Usage

```ruby
# Gemfile
source 'https://rubygems.pkg.github.com/theforeman/theforeman-rubocop' do
  gem 'theforeman-rubocop', '~> 0.0.1'
end
```

And configure in the `.rubocop.yml`.

### Easiest config - get all

```yaml
.inherit-gem:
  theforeman-rubocop:
    - all
```

### Choose just some cops

Cops are splited in categories for your convenience, so you can opt-out some cops.

 .rubocop.yml
```yaml
.inherit-gem:
  theforeman-rubocop:
    - default.yml
    - ruby_target.yml
    - performance.yml
    - rails.yml
    - minitest.yml
```
