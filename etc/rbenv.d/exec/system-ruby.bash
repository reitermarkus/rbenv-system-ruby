if [ "$RBENV_VERSION" = 'system' ]; then
  export RUBYLIB="${BASH_SOURCE%.bash}:$RUBYLIB"
  export GEM_HOME="$RBENV_ROOT/versions/system/lib/ruby/system"

  case "${1}" in
    gem)
      case "${2}" in
        install|uninstall)
          set -- ${@:1:2} --bindir "$RBENV_ROOT/versions/system/bin" ${@:3}
        ;;
      esac
    ;;
  esac
fi
