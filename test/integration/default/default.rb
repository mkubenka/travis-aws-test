control "ntpd-1" do
    impact 1.0
    title "Package is installed and running"

    describe package('ntp') do
        it { should be_installed }
    end

    describe service('ntpd') do
        it { should be_installed }
        it { should be_enabled }
        it { should be_running }
    end
end
