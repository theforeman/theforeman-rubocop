# How to run RuboCop in GH action

## Foreman plugin

We will cover how to do use this in Foreman plugin. It should work for any rubygem the same tho.

Rubocop doesn't benefit from running in the full Foreman environment so it is actually better to have own dependency in Gemfile on it.
We are then able to run the rubocop directly in the plugin folder, which is much faster as we install only the plugin dependencies, not the full foreman dependencies.

In theory, you can just `gem install theforeman-foreman` in the action, but it is discouraged as it is then hard to synchronize what version you use in the CI.

### Plugin `Gemfile`

```ruby
  source 'https://rubygems.org'
gemspec

# We use special group rubocop so we can opt out from all dependencies but rubocop.
gem 'theforeman-rubocop', '~> 0.1.0', groups: %i[development rubocop]
```

### GH action

Following GH action will run

```yaml
name: Ruby Testing
on:
  pull_request:
  push:
    branches:
    - master
jobs:
  rubocop:
    runs-on: ubuntu-latest
    env:
      BUNDLE_WITHOUT: development:test
    steps:
      - uses: actions/checkout@v2
      - name: Setup Ruby
        uses: ruby/setup-ruby@v1
        with:
          ruby-version: 2.7 # Currently supported ruby verion
          bundler-cache: true
      - name: Run rubocop
        run: bundle exec rubocop -P --format github
  view_specs:
    runs-on: ubuntu-latest
    needs: rubocop
    # .... Whatever you run as tests if you run them in GH actions
```
