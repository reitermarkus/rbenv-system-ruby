# `rbenv` support for `system` Ruby

Since setting `GEM_HOME` doesn't work well with `rbenv`, this plugin makes `gem` to use `$(rbenv root)/versions/system` as `GEM_HOME`, when `rbenv version` returns `system`.

# Installation

```bash
brew install reitermarkus/tap/rbenv-system-ruby
```
