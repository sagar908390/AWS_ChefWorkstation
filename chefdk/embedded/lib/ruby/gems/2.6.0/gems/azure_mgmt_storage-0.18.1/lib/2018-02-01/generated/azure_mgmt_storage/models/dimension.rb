# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_02_01
  module Models
    #
    # Dimension of blobs, possibly be blob type or access tier.
    #
    class Dimension

      include MsRestAzure

      # @return [String] Display name of dimension.
      attr_accessor :name

      # @return [String] Display name of dimension.
      attr_accessor :display_name


      #
      # Mapper for Dimension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Dimension',
          type: {
            name: 'Composite',
            class_name: 'Dimension',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'displayName',
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
