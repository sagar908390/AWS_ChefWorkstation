# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_10_01
  module Models
    #
    # Describes a network interface reference.
    #
    class NetworkInterfaceReference < SubResource

      include MsRestAzure

      # @return [Boolean] Specifies the primary network interface in case the
      # virtual machine has more than 1 network interface.
      attr_accessor :primary


      #
      # Mapper for NetworkInterfaceReference class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NetworkInterfaceReference',
          type: {
            name: 'Composite',
            class_name: 'NetworkInterfaceReference',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              primary: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.primary',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
