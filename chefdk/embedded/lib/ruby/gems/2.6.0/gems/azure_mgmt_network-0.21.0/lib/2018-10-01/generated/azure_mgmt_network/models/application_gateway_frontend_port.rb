# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_10_01
  module Models
    #
    # Frontend port of an application gateway.
    #
    class ApplicationGatewayFrontendPort < SubResource

      include MsRestAzure

      # @return [Integer] Frontend port
      attr_accessor :port

      # @return [String] Provisioning state of the frontend port resource.
      # Possible values are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Name of the frontend port that is unique within an
      # Application Gateway
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayFrontendPort class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayFrontendPort',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayFrontendPort',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              port: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.port',
                type: {
                  name: 'Number'
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
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
