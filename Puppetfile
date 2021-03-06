# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

def devmolst(name, *args)
  mod name, :path => "#{ENV['HOME']}/dev/int/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

# github "boxen", "3.4.2"
devmolst "boxen"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"
github "git",         "2.3.0"
github "go",          "1.1.0"
# github "homebrew",    "1.6.2"
devmolst "homebrew"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.3.0"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "chrome",      "1.1.2"# github "firefox",     "1.1.8"# github "virtualbox",  "1.0.11"# github "vagrant",     "3.0.7"# github "btsync",      "1.0.0"# github "hipchat",     "2.5.2"# github "onepassword", "1.1.0"# github "python",      "1.1.1"

# Added by people - only included in personal manifests

# github "googledrive", "1.0.2"
# github "dropbox",     "1.2.0"
# github "iterm2",      "1.0.4"
# github "fish",        "1.0.0"
# github "gimp",        "1.0.0"
github "emacs",       "1.1.0"