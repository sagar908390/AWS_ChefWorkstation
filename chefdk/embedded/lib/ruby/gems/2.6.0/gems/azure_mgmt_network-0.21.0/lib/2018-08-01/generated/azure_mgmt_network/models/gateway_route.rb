# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_08_01
  module Models
    #
    # Gateway routing details
    #
    class GatewayRoute

      include MsRestAzure

      # @return [String] The gateway's local address
      attr_accessor :local_address

      # @return [String] The route's network prefix
      attr_accessor :network

      # @return [String] The route's next hop
      attr_accessor :next_hop

      # @return [String] The peer this route was learned from
      attr_accessor :source_peer

      # @return [String] The source this route was learned from
      attr_accessor :origin

      # @return [String] The route's AS path sequence
      attr_accessor :as_path

      # @return [Integer] The route's weight
      attr_accessor :weight


      #
      # Mapper for GatewayRoute class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GatewayRoute',
          type: {
            name: 'Composite',
            class_name: 'GatewayRoute',
            model_properties: {
              local_address: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'localAddress',
                type: {
                  name: 'String'
                }
              },
              network: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'network',
                type: {
                  name: 'String'
                }
              },
              next_hop: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextHop',
                type: {
                  name: 'String'
                }
              },
              source_peer: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'sourcePeer',
                type: {
                  name: 'String'
                }
              },
              origin: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              as_path: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'asPath',
                type: {
                  name: 'String'
                }
              },
              weight: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'weight',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
