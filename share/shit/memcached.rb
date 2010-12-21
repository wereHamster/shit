
poop 'memcached', '1.4.5' do
  unpack "http://memcached.googlecode.com/files/memcached-#{version}.tar.gz" do
    unpack "http://www.monkey.org/~provos/libevent-1.4.14b-stable.tar.gz" do
      configure '--enable-static', '--disable-shared', "--prefix=#{Dir.pwd}/../memcached-1.4.5/__ext__" and make :install
    end
    configure "--with-libevent=#{Dir.pwd}/__ext__" and make :install
  end
end
