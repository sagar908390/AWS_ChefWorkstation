# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_06_01
  module Models
    #
    # Load balancer Probe
    #
    class Probe < SubResource

      include MsRestAzure

      # @return [Array<SubResource>] Gets Load balancer rules that use this
      # probe
      attr_accessor :load_balancing_rules

      # @return [ProbeProtocol] Gets or sets the protocol of the end point.
      # Possible values are http or Tcp. If Tcp is specified, a received ACK is
      # required for the probe to be successful. If http is specified,a 200 OK
      # response from the specifies URI is required for the probe to be
      # successful. Possible values include: 'Http', 'Tcp'
      attr_accessor :protocol

      # @return [Integer] Gets or sets Port for communicating the probe.
      # Possible values range from 1 to 65535, inclusive.
      attr_accessor :port

      # @return [Integer] Gets or sets the interval, in seconds, for how
      # frequently to probe the endpoint for health status. Typically, the
      # interval is slightly less than half the allocated timeout period (in
      # seconds) which allows two full probes before taking the instance out of
      # rotation. The default value is 15, the minimum value is 5
      attr_accessor :interval_in_seconds

      # @return [Integer] Gets or sets the number of probes where if no
      # response, will result in stopping further traffic from being delivered
      # to the endpoint. This values allows endpoints to be taken out of
      # rotation faster or slower than the typical times used in Azure.
      attr_accessor :number_of_probes

      # @return [String] Gets or sets the URI used for requesting health status
      # from the VM. Path is required if a protocol is set to http. Otherwise,
      # it is not allowed. There is no default value
      attr_accessor :request_path

      # @return [String] Gets provisioning state of the PublicIP resource
      # Updating/Deleting/Failed
      attr_accessor :provisioning_state

      # @return [String] Gets name of the resource that is unique within a
      # resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for Probe class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Probe',
          type: {
            name: 'Composite',
            class_name: 'Probe',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              load_balancing_rules: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.loadBalancingRules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubResource'
                      }
                  }
                }
              },
              protocol: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.protocol',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.port',
                type: {
                  name: 'Number'
                }
              },
              interval_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.intervalInSeconds',
                type: {
                  name: 'Number'
                }
              },
              number_of_probes: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.numberOfProbes',
                type: {
                  name: 'Number'
                }
              },
              request_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.requestPath',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
