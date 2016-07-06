module MCollective
  module Agent
    class Puppetnode<RPC::Agent
      action "deactivate" do
        out = %x[puppet node deactivate #{params[:node]}]

        reply[:disabled] = out =~ /disabled/
      end
    end
  end
end
