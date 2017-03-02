if [ "$RBENV_VERSION" = 'system' ]; then
  export RUBYLIB="${BASH_SOURCE%.bash}:$RUBYLIB"
  export GEM_HOME="$RBENV_ROOT/versions/system/lib/ruby/gems/system"

  mkdir -p "$GEM_HOME/bin"
  ln -sfn "$GEM_HOME/bin" "$RBENV_ROOT/versions/system/bin"
fi
