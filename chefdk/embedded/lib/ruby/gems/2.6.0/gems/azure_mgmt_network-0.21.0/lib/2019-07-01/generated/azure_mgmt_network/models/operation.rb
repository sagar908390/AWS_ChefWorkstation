# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2019_07_01
  module Models
    #
    # Network REST API operation definition.
    #
    class Operation

      include MsRestAzure

      # @return [String] Operation name: {provider}/{resource}/{operation}.
      attr_accessor :name

      # @return [OperationDisplay] Display metadata associated with the
      # operation.
      attr_accessor :display

      # @return [String] Origin of the operation.
      attr_accessor :origin

      # @return [OperationPropertiesFormatServiceSpecification] Specification
      # of the service.
      attr_accessor :service_specification


      #
      # Mapper for Operation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Operation',
          type: {
            name: 'Composite',
            class_name: 'Operation',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display: {
                client_side_validation: true,
                required: false,
                serialized_name: 'display',
                type: {
                  name: 'Composite',
                  class_name: 'OperationDisplay'
                }
              },
              origin: {
                client_side_validation: true,
                required: false,
                serialized_name: 'origin',
                type: {
                  name: 'String'
                }
              },
              service_specification: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.serviceSpecification',
                type: {
                  name: 'Composite',
                  class_name: 'OperationPropertiesFormatServiceSpecification'
                }
              }
            }
          }
        }
      end
    end
  end
end
