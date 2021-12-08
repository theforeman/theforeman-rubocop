[![Gem Version](https://badge.fury.io/rb/theforeman-rubocop.svg)](https://badge.fury.io/rb/theforeman-rubocop)

# theforeman-rubocop

![Foreman](https://raw.githubusercontent.com/theforeman/foreman-graphics/master/logo/foreman_medium.png)

Set of RuboCop styles for [Foreman](https://theforeman.org) and its plugins.

## Introduction

As we are one organization and almost one project, it would be nice to keep the similar standards for code quality.

Instead of defining the rules for plugin per plugin, plugins can include defaults from this gem.

## Usage

There is also a [guide how to run this in GH action](docs/github_action.md)

```ruby
# Gemfile
gem 'theforeman-rubocop', '~> 0.0.4'
```

And configure in the `.rubocop.yml`.

### Easiest config - all opinionated Cops `strict`

```yaml
inherit_gem:
  theforeman-rubocop:
    - strict.yml
```

### Basic style - `default`, performance and rails cops
```yaml
inherit_gem:
  theforeman-rubocop:
    - default.yml
```

### Not intrusive style - `lenient`
It is similar to default, but has some not as important cops disabled.
See `rules/style_lenient.yml` for disabled cops.

```yaml
inherit_gem:
  theforeman-rubocop:
    - lenient.yml
```

### All opinionated cops with new ones - `strictest`
If you want to closely follow what RuboCop introduces in its new versions, use this level.
It is the same as `strict`, but enables the newly introduced cops.

```yaml
inherit_gem:
  theforeman-rubocop:
    - strictest.yml
```

### Choose just some cops

Cops are splited in categories for your convenience, so you can opt-out some cops.

 .rubocop.yml
```yaml
inherit_gem:
  theforeman-rubocop:
    - rules/base.yml
    - rules/ruby_target.yml
    - rules/style.yml
    - rules/metrics.yml
    - rules/performance.yml
    - rules/rails.yml
    - rules/minitest.yml
    - rules/style_lenient.yml

AllCops:
  NewCops: disable
```
