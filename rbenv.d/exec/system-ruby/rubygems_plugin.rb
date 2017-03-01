if ENV["RBENV_VERSION"] == 'system' && !(rbenv_root = `rbenv root`.chomp).empty?
  ENV["GEM_HOME"] = "#{rbenv_root}/versions/system"

  hook = lambda do |installer|
    begin
      if installer.spec.executables.any?
        `rbenv rehash`
      end
    rescue
      warn "rbenv: error in system-gem-rehash (#{$!.class.name}: #{$!.message})"
    end
  end

  begin
    Gem.post_install(&hook)
    Gem.post_uninstall(&hook)
  rescue
    warn "rbenv: error installing gem-rehash hooks (#{$!.class.name}: #{$!.message})"
  end
end
