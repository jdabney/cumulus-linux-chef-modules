require 'serverspec'

set :backend, :exec
set :path, '/bin:/usr/bin:/sbin/usr/sbin'

describe file('/etc/cumulus/.license.txt') do
  it { should be_file }
  its(:content) { should match(/Rocket Turtle!/) }
  its(:content) { should match(/\/usr\/cumulus\/bin\/cl-license -i http:\/\/localhost\/test.lic/) }
end 