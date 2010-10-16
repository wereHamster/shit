
poop 'yaml-cpp', '0.2.5' do
  unpack "http://yaml-cpp.googlecode.com/files/yaml-cpp-#{version}.tar.gz" do
    cmake '.' and make 'install'
  end
end
