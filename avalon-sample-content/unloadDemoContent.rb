#remove fedora content
Dir.glob('/usr/share/avalon-sample-content/*.foxml.xml').each do |f|
  pid = File.basename(f).split('.').first.sub('_', ':') 
  ActiveFedora::FixtureLoader.delete(pid)
end
