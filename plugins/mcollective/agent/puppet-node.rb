module MCollective
  module Agent
    class PuppetNode<RPC::Agent
      action "deactivate" do
        out = %x[puppet agent deactivate #{params[:node]}]

        reply[:disabled] = out =~ /disabled/
      end
    end
  end
end
