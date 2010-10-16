
poop 'llvm', '2.8' do
  unpack "http://llvm.org/releases/#{version}/llvm-#{version}.tgz" do
    unpack "http://llvm.org/releases/#{version}/clang-#{version}.tgz", :as => 'tools/clang'
    configure and make :install
  end
end

