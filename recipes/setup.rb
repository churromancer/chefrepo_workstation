package 'vim' do
   action :install
end

package 'tree' do
   action :install
end

package 'ntp' do
   action :install
end

package 'git' do
   action :install
end

template '/etc/motd' do
   source 'motd.erb'
   variables(
     :name => 'Josh Janoski'
   )
   action :create
end
