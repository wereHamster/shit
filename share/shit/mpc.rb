
poop 'mpc', '0.8.2' do
  unpack "http://www.multiprecision.org/mpc/download/mpc-#{version}.tar.gz" do
    configure and make :install
  end
end
