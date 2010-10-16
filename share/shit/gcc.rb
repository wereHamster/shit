
poop 'gcc', '4.5.1' do
  unpack "http://ftp.gnu.org/pub/gnu/gcc/gcc-#{version}/gcc-#{version}.tar.bz2" do
    configure and make and make :install
  end
end
