if [ "$RBENV_VERSION" = 'system' ]; then
  if [ -z "${RBENV_COMMAND_PATH}" ]; then
    if [ -f "${RBENV_ROOT}/versions/${RBENV_VERSION}/bin/${RBENV_COMMAND}" ]; then
      RBENV_COMMAND_PATH="${RBENV_ROOT}/versions/${RBENV_VERSION}/bin/${RBENV_COMMAND}"
    fi
  fi
fi
