# `rbenv` support for `system` Ruby

Setting `GEM_HOME` doesn't work well with `rbenv` if you want Gems to be isolated per version. This plugin makes `gem` install under `RBENV_ROOT/versions/system`, when `rbenv version` is `system`. This way `system` is treated just like any other Ruby version installed with `rbenv`.

# Installation

```bash
brew install reitermarkus/tap/rbenv-system-ruby
```
