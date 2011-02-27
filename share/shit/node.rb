
poop 'node', '0.4.1' do
  unpack "http://nodejs.org/dist/node-v#{version}.tar.gz" do
    configure and make :install
  end
end