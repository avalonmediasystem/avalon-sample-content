#load fedora content
#load the collections first
foxml_files = Dir.glob('/usr/share/avalon-sample-content/*.foxml.xml')
collection_files = foxml_files.select {|f| !File.open(f).readlines.grep(/\"info:fedora\/afmodel:Admin_Collection\"/).empty?}
collection_files.each do |f|
  pid = ActiveFedora::FixtureLoader.import_to_fedora(f)
  ActiveFedora::FixtureLoader.index(pid)
end
#load everything else
(foxml_files - collection_files).each do |f|
  pid = ActiveFedora::FixtureLoader.import_to_fedora(f)
  ActiveFedora::FixtureLoader.index(pid)
end
