module MCollective
  module Agent
    class Puppetnode<RPC::Agent
      action "deactivate" do
        reply[:out] = %x[puppet node deactivate #{request[:node]}]

        if reply[:out] =~ /disabled/
          reply[:disabled] = :true
        else
          reply[:disabled] = :false
        end
      end
    end
  end
end
