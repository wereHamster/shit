
poop 'boost', '1.44.0' do
  unpack "http://downloads.sourceforge.net/project/boost/boost/1.44.0/boost_1_44_0.tar.bz2" do
    run './bootstrap.sh', "--prefix=#{prefix}"
    run './bjam', :install
  end
end
