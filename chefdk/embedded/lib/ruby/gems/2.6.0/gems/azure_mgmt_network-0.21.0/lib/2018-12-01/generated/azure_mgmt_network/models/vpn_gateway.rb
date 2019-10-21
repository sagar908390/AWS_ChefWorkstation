# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_12_01
  module Models
    #
    # VpnGateway Resource.
    #
    class VpnGateway < Resource

      include MsRestAzure

      # @return [SubResource] The VirtualHub to which the gateway belongs
      attr_accessor :virtual_hub

      # @return [Array<VpnConnection>] List of all vpn connections to the
      # gateway.
      attr_accessor :connections

      # @return [BgpSettings] Local network gateway's BGP speaker settings.
      attr_accessor :bgp_settings

      # @return [ProvisioningState] The provisioning state of the resource.
      # Possible values include: 'Succeeded', 'Updating', 'Deleting', 'Failed'
      attr_accessor :provisioning_state

      # @return [Integer] The scale unit for this vpn gateway.
      attr_accessor :vpn_gateway_scale_unit

      # @return [String] Gets a unique read-only string that changes whenever
      # the resource is updated.
      attr_accessor :etag


      #
      # Mapper for VpnGateway class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VpnGateway',
          type: {
            name: 'Composite',
            class_name: 'VpnGateway',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                client_side_validation: true,
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              virtual_hub: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.virtualHub',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.connections',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'VpnConnectionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VpnConnection'
                      }
                  }
                }
              },
              bgp_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.bgpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'BgpSettings'
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
              vpn_gateway_scale_unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.vpnGatewayScaleUnit',
                type: {
                  name: 'Number'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
