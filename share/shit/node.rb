
poop 'node', '0.2.5' do
  unpack "http://nodejs.org/dist/node-v#{version}.tar.gz" do
    configure and make :install
  end
end