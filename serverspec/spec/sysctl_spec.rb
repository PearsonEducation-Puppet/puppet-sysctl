# For serverspec documentation - see http://serverspec.org/tutorial.html
require_relative '../spec_helper'

describe file('/etc/sysctl.d') do
  it { should be_directory }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
  it { should be_mode '755' }
end

describe linux_kernel_parameter('net.ipv4.ip_forward') do 
  its(:value) { should eq 1 }
end

describe linux_kernel_parameter('net.core.somaxconn') do 
  its(:value) { should eq 65536 }
end

describe linux_kernel_parameter('vm.overcommit_memory') do 
  its(:value) { should eq 1 }
end
