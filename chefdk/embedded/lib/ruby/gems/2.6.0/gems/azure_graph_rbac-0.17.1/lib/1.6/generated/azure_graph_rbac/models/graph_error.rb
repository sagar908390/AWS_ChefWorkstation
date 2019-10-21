# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::GraphRbac::V1_6
  module Models
    #
    # Active Directory error information.
    #
    class GraphError

      include MsRestAzure

      # @return [String] Error code.
      attr_accessor :code

      # @return [String] Error message value.
      attr_accessor :message


      #
      # Mapper for GraphError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GraphError',
          type: {
            name: 'Composite',
            class_name: 'GraphError',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                serialized_name: 'odata\\.error.code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                serialized_name: 'odata\\.error.message.value',
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
