
poop 'gmp', '5.0.1' do
  unpack "http://ftp.gnu.org/pub/gnu/gmp/gmp-#{version}.tar.bz2" do
    configure and make :install
  end
end
