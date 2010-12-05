
poop 'nginx', '0.8.53' do
  unpack "http://nginx.org/download/nginx-#{version}.tar.gz" do
    configure and make :install
  end
end
