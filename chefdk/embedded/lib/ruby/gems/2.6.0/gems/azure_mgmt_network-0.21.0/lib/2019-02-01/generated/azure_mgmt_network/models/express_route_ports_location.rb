# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_02_01
  module Models
    #
    # ExpressRoutePorts Peering Location

    # Definition of the ExpressRoutePorts peering location resource.
    #
    class ExpressRoutePortsLocation < Resource

      include MsRestAzure

      # @return [String] Address of peering location.
      attr_accessor :address

      # @return [String] Contact details of peering locations.
      attr_accessor :contact

      # @return [Array<ExpressRoutePortsLocationBandwidths>] The inventory of
      # available ExpressRoutePort bandwidths.
      attr_accessor :available_bandwidths

      # @return [String] The provisioning state of the ExpressRoutePortLocation
      # resource. Possible values are: 'Succeeded', 'Updating', 'Deleting', and
      # 'Failed'.
      attr_accessor :provisioning_state


      #
      # Mapper for ExpressRoutePortsLocation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ExpressRoutePortsLocation',
          type: {
            name: 'Composite',
            class_name: 'ExpressRoutePortsLocation',
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
              address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.address',
                type: {
                  name: 'String'
                }
              },
              contact: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.contact',
                type: {
                  name: 'String'
                }
              },
              available_bandwidths: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.availableBandwidths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExpressRoutePortsLocationBandwidthsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExpressRoutePortsLocationBandwidths'
                      }
                  }
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
