metadata :name => "puppet-node",
         :description => "Run Puppet node actions",
         :author => "Raphaël Pinson <raphael.pinson@camptocamp.com>",
         :license => "ASL2.0",
         :version => "0.1.0",
         :url => "",
         :timeout => 20

requires :mcollective => "2.2.1"

action "deactivate", :description => "Deactivate a node" do
    display :always

    input :node,
          :prompt      => "Node",
          :description => "Node Name",
          :type        => :string,
          :validation  => '^.+$',
          :optional    => false,
          :maxlength   => 150

    summarize do
        aggregate boolean_summary(:disabled, {:true => "Disabled", :false => "Not Disabled"})
    end
end
