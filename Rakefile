require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s|
    s.platform  =   Gem::Platform::RUBY
    s.name      =   "executor"
    s.version   =   "0.0.1"
    s.author    =   "Benjamin P Blackburne"
    s.email     =   "bpb at lysozyme dot net"
    s.summary   =   "A simple thread pool."
    s.files     =   FileList['lib/*.rb'].to_a
    s.require_path  =   "lib"
    s.homepage = "http://github.com/benb"
    #s.test_files = Dir.glob('tests/*.rb')
    s.has_rdoc  =   false
    #s.extra_rdoc_files  =   ["README"]
end

Rake::GemPackageTask.new(spec) do |pkg|
    pkg.need_tar = true
end

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
    puts "generated latest version"
end
