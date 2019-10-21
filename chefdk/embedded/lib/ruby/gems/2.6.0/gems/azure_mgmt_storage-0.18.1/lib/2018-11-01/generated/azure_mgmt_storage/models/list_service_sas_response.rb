# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2018_11_01
  module Models
    #
    # The List service SAS credentials operation response.
    #
    class ListServiceSasResponse

      include MsRestAzure

      # @return [String] List service SAS credentials of specific resource.
      attr_accessor :service_sas_token


      #
      # Mapper for ListServiceSasResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ListServiceSasResponse',
          type: {
            name: 'Composite',
            class_name: 'ListServiceSasResponse',
            model_properties: {
              service_sas_token: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'serviceSasToken',
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
