module MCollective
  module Agent
    class Puppetnode<RPC::Agent
      action "deactivate" do
        reply[:out] = %x[puppet node deactivate #{request[:node]}]
      end
      action "clean" do
        reply[:out] = %x[puppet node clean #{request[:node]}]
      end
    end
  end
end
