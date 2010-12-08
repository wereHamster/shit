
poop 'git', '1.7.3.3' do
  unpack "http://kernel.org/pub/software/scm/git/git-#{version}.tar.bz2" do
    make 'install', "prefix=#{prefix}"
  end
end
