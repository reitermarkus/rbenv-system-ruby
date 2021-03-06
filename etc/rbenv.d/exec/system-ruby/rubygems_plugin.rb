hook = lambda do |installer|
  begin
    if installer.spec.executables.any?
      `rbenv rehash`
    end
  rescue
    warn "rbenv: error in system-ruby (#{$!.class.name}: #{$!.message})"
  end
end

begin
  Gem.post_install(&hook)
  Gem.post_uninstall(&hook)
rescue
  warn "rbenv: error installing system-ruby hooks (#{$!.class.name}: #{$!.message})"
end
