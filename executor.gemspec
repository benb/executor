Gem::Specification.new do |s|
    s.platform  =   Gem::Platform::RUBY
    s.name      =   "executor"
    s.version   =   "0.0.2"
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
