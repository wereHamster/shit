
poop 'mongodb', 'r1.6.4' do
  unpack "http://fastdl.mongodb.org/src/mongodb-src-#{version}.tar.gz" do
    scons "--prefix=#{prefix}", "install"
  end
end
