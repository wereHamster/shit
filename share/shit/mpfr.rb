
poop 'mpfr', '3.0.0' do
  unpack "http://www.mpfr.org/mpfr-current/mpfr-#{version}.tar.bz2" do
    configure and make :install
  end
end
