# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2019_05_01
  module Models
    #
    # Deployment information.
    #
    class DeploymentExtended

      include MsRestAzure

      # @return [String] The ID of the deployment.
      attr_accessor :id

      # @return [String] The name of the deployment.
      attr_accessor :name

      # @return [String] The type of the deployment.
      attr_accessor :type

      # @return [String] the location of the deployment.
      attr_accessor :location

      # @return [DeploymentPropertiesExtended] Deployment properties.
      attr_accessor :properties


      #
      # Mapper for DeploymentExtended class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeploymentExtended',
          type: {
            name: 'Composite',
            class_name: 'DeploymentExtended',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
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
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'DeploymentPropertiesExtended'
                }
              }
            }
          }
        }
      end
    end
  end
end
