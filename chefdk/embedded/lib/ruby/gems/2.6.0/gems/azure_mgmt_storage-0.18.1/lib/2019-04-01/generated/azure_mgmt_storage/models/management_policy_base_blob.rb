# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Storage::Mgmt::V2019_04_01
  module Models
    #
    # Management policy action for base blob.
    #
    class ManagementPolicyBaseBlob

      include MsRestAzure

      # @return [DateAfterModification] The function to tier blobs to cool
      # storage. Support blobs currently at Hot tier
      attr_accessor :tier_to_cool

      # @return [DateAfterModification] The function to tier blobs to archive
      # storage. Support blobs currently at Hot or Cool tier
      attr_accessor :tier_to_archive

      # @return [DateAfterModification] The function to delete the blob
      attr_accessor :delete


      #
      # Mapper for ManagementPolicyBaseBlob class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagementPolicyBaseBlob',
          type: {
            name: 'Composite',
            class_name: 'ManagementPolicyBaseBlob',
            model_properties: {
              tier_to_cool: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tierToCool',
                type: {
                  name: 'Composite',
                  class_name: 'DateAfterModification'
                }
              },
              tier_to_archive: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tierToArchive',
                type: {
                  name: 'Composite',
                  class_name: 'DateAfterModification'
                }
              },
              delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'delete',
                type: {
                  name: 'Composite',
                  class_name: 'DateAfterModification'
                }
              }
            }
          }
        }
      end
    end
  end
end
