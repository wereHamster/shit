
poop 'curl', '7.21.3' do
  unpack "http://curl.haxx.se/download/curl-#{version}.tar.bz2" do
    configure and make :install
  end
end
