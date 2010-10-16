
poop 'ruby', '1.9.2-p0' do
  unpack "http://ftp.ruby-lang.org//pub/ruby/1.9/ruby-#{version}.tar.gz" do
    configure and make 'install'
  end
end
