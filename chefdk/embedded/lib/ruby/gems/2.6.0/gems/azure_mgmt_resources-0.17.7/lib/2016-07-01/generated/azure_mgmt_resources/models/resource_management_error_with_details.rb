# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_07_01
  module Models
    #
    # Model object.
    #
    #
    class ResourceManagementErrorWithDetails

      include MsRestAzure

      # @return [String] The error code returned from the server.
      attr_accessor :code

      # @return [String] The error message returned from the server.
      attr_accessor :message

      # @return [String] The target of the error.
      attr_accessor :target

      # @return [Array<ResourceManagementErrorWithDetails>] Validation error.
      attr_accessor :details


      #
      # Mapper for ResourceManagementErrorWithDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResourceManagementErrorWithDetails',
          type: {
            name: 'Composite',
            class_name: 'ResourceManagementErrorWithDetails',
            model_properties: {
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ResourceManagementErrorWithDetailsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ResourceManagementErrorWithDetails'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
