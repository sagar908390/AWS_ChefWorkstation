# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2018-10-01/generated/azure_mgmt_compute/module_definition'
require 'ms_rest_azure'

module Azure::Compute::Mgmt::V2018_10_01
  autoload :Operations,                                         '2018-10-01/generated/azure_mgmt_compute/operations.rb'
  autoload :AvailabilitySets,                                   '2018-10-01/generated/azure_mgmt_compute/availability_sets.rb'
  autoload :ProximityPlacementGroups,                           '2018-10-01/generated/azure_mgmt_compute/proximity_placement_groups.rb'
  autoload :VirtualMachineExtensionImages,                      '2018-10-01/generated/azure_mgmt_compute/virtual_machine_extension_images.rb'
  autoload :VirtualMachineExtensions,                           '2018-10-01/generated/azure_mgmt_compute/virtual_machine_extensions.rb'
  autoload :VirtualMachineImages,                               '2018-10-01/generated/azure_mgmt_compute/virtual_machine_images.rb'
  autoload :UsageOperations,                                    '2018-10-01/generated/azure_mgmt_compute/usage_operations.rb'
  autoload :VirtualMachines,                                    '2018-10-01/generated/azure_mgmt_compute/virtual_machines.rb'
  autoload :VirtualMachineSizes,                                '2018-10-01/generated/azure_mgmt_compute/virtual_machine_sizes.rb'
  autoload :Images,                                             '2018-10-01/generated/azure_mgmt_compute/images.rb'
  autoload :VirtualMachineScaleSets,                            '2018-10-01/generated/azure_mgmt_compute/virtual_machine_scale_sets.rb'
  autoload :VirtualMachineScaleSetExtensions,                   '2018-10-01/generated/azure_mgmt_compute/virtual_machine_scale_set_extensions.rb'
  autoload :VirtualMachineScaleSetRollingUpgrades,              '2018-10-01/generated/azure_mgmt_compute/virtual_machine_scale_set_rolling_upgrades.rb'
  autoload :VirtualMachineScaleSetVMs,                          '2018-10-01/generated/azure_mgmt_compute/virtual_machine_scale_set_vms.rb'
  autoload :LogAnalytics,                                       '2018-10-01/generated/azure_mgmt_compute/log_analytics.rb'
  autoload :VirtualMachineRunCommands,                          '2018-10-01/generated/azure_mgmt_compute/virtual_machine_run_commands.rb'
  autoload :ComputeManagementClient,                            '2018-10-01/generated/azure_mgmt_compute/compute_management_client.rb'

  module Models
    autoload :VirtualMachineListResult,                           '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_list_result.rb'
    autoload :AutomaticOSUpgradePolicy,                           '2018-10-01/generated/azure_mgmt_compute/models/automatic_osupgrade_policy.rb'
    autoload :ComputeOperationListResult,                         '2018-10-01/generated/azure_mgmt_compute/models/compute_operation_list_result.rb'
    autoload :RollingUpgradePolicy,                               '2018-10-01/generated/azure_mgmt_compute/models/rolling_upgrade_policy.rb'
    autoload :SubResource,                                        '2018-10-01/generated/azure_mgmt_compute/models/sub_resource.rb'
    autoload :UpgradePolicy,                                      '2018-10-01/generated/azure_mgmt_compute/models/upgrade_policy.rb'
    autoload :VirtualMachineIdentity,                             '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_identity.rb'
    autoload :MaintenanceRedeployStatus,                          '2018-10-01/generated/azure_mgmt_compute/models/maintenance_redeploy_status.rb'
    autoload :AvailabilitySetListResult,                          '2018-10-01/generated/azure_mgmt_compute/models/availability_set_list_result.rb'
    autoload :VirtualMachineInstanceView,                         '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_instance_view.rb'
    autoload :SubResourceReadOnly,                                '2018-10-01/generated/azure_mgmt_compute/models/sub_resource_read_only.rb'
    autoload :UpgradeOperationHistoryStatus,                      '2018-10-01/generated/azure_mgmt_compute/models/upgrade_operation_history_status.rb'
    autoload :VirtualMachineSize,                                 '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_size.rb'
    autoload :RollbackStatusInfo,                                 '2018-10-01/generated/azure_mgmt_compute/models/rollback_status_info.rb'
    autoload :RollingUpgradeRunningStatus,                        '2018-10-01/generated/azure_mgmt_compute/models/rolling_upgrade_running_status.rb'
    autoload :ComputeOperationValue,                              '2018-10-01/generated/azure_mgmt_compute/models/compute_operation_value.rb'
    autoload :VirtualMachineExtensionInstanceView,                '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_extension_instance_view.rb'
    autoload :InstanceViewStatus,                                 '2018-10-01/generated/azure_mgmt_compute/models/instance_view_status.rb'
    autoload :VirtualMachineScaleSetVMInstanceView,               '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_view.rb'
    autoload :Sku,                                                '2018-10-01/generated/azure_mgmt_compute/models/sku.rb'
    autoload :PurchasePlan,                                       '2018-10-01/generated/azure_mgmt_compute/models/purchase_plan.rb'
    autoload :ApiError,                                           '2018-10-01/generated/azure_mgmt_compute/models/api_error.rb'
    autoload :DataDiskImage,                                      '2018-10-01/generated/azure_mgmt_compute/models/data_disk_image.rb'
    autoload :ImageOSDisk,                                        '2018-10-01/generated/azure_mgmt_compute/models/image_osdisk.rb'
    autoload :VirtualMachineHealthStatus,                         '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_health_status.rb'
    autoload :ImageDataDisk,                                      '2018-10-01/generated/azure_mgmt_compute/models/image_data_disk.rb'
    autoload :Usage,                                              '2018-10-01/generated/azure_mgmt_compute/models/usage.rb'
    autoload :ImageStorageProfile,                                '2018-10-01/generated/azure_mgmt_compute/models/image_storage_profile.rb'
    autoload :VirtualMachineReimageParameters,                    '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_reimage_parameters.rb'
    autoload :InnerError,                                         '2018-10-01/generated/azure_mgmt_compute/models/inner_error.rb'
    autoload :VirtualMachineScaleSetListOSUpgradeHistory,         '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_osupgrade_history.rb'
    autoload :HardwareProfile,                                    '2018-10-01/generated/azure_mgmt_compute/models/hardware_profile.rb'
    autoload :ImageListResult,                                    '2018-10-01/generated/azure_mgmt_compute/models/image_list_result.rb'
    autoload :KeyVaultSecretReference,                            '2018-10-01/generated/azure_mgmt_compute/models/key_vault_secret_reference.rb'
    autoload :VirtualMachineScaleSetIdentityUserAssignedIdentitiesValue, '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_identity_user_assigned_identities_value.rb'
    autoload :DiskEncryptionSettings,                             '2018-10-01/generated/azure_mgmt_compute/models/disk_encryption_settings.rb'
    autoload :VirtualMachineScaleSetIdentity,                     '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_identity.rb'
    autoload :DiffDiskSettings,                                   '2018-10-01/generated/azure_mgmt_compute/models/diff_disk_settings.rb'
    autoload :VirtualMachineScaleSetOSProfile,                    '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_osprofile.rb'
    autoload :OSDisk,                                             '2018-10-01/generated/azure_mgmt_compute/models/osdisk.rb'
    autoload :VirtualMachineScaleSetUpdateOSProfile,              '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_osprofile.rb'
    autoload :StorageProfile,                                     '2018-10-01/generated/azure_mgmt_compute/models/storage_profile.rb'
    autoload :VirtualMachineScaleSetManagedDiskParameters,        '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_managed_disk_parameters.rb'
    autoload :AdditionalUnattendContent,                          '2018-10-01/generated/azure_mgmt_compute/models/additional_unattend_content.rb'
    autoload :VirtualMachineScaleSetOSDisk,                       '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_osdisk.rb'
    autoload :WinRMConfiguration,                                 '2018-10-01/generated/azure_mgmt_compute/models/win_rmconfiguration.rb'
    autoload :VirtualMachineScaleSetUpdateOSDisk,                 '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_osdisk.rb'
    autoload :SshPublicKey,                                       '2018-10-01/generated/azure_mgmt_compute/models/ssh_public_key.rb'
    autoload :VirtualMachineScaleSetDataDisk,                     '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_data_disk.rb'
    autoload :LinuxConfiguration,                                 '2018-10-01/generated/azure_mgmt_compute/models/linux_configuration.rb'
    autoload :VirtualMachineScaleSetStorageProfile,               '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_storage_profile.rb'
    autoload :VaultSecretGroup,                                   '2018-10-01/generated/azure_mgmt_compute/models/vault_secret_group.rb'
    autoload :VirtualMachineScaleSetUpdateStorageProfile,         '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_storage_profile.rb'
    autoload :RollingUpgradeProgressInfo,                         '2018-10-01/generated/azure_mgmt_compute/models/rolling_upgrade_progress_info.rb'
    autoload :ApiEntityReference,                                 '2018-10-01/generated/azure_mgmt_compute/models/api_entity_reference.rb'
    autoload :BootDiagnostics,                                    '2018-10-01/generated/azure_mgmt_compute/models/boot_diagnostics.rb'
    autoload :VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings, '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_public_ipaddress_configuration_dns_settings.rb'
    autoload :VirtualMachineExtensionHandlerInstanceView,         '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_extension_handler_instance_view.rb'
    autoload :VirtualMachineScaleSetIpTag,                        '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_ip_tag.rb'
    autoload :DiskInstanceView,                                   '2018-10-01/generated/azure_mgmt_compute/models/disk_instance_view.rb'
    autoload :VirtualMachineScaleSetPublicIPAddressConfiguration, '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_public_ipaddress_configuration.rb'
    autoload :VirtualMachineIdentityUserAssignedIdentitiesValue,  '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_identity_user_assigned_identities_value.rb'
    autoload :VirtualMachineScaleSetUpdatePublicIPAddressConfiguration, '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_public_ipaddress_configuration.rb'
    autoload :Resource,                                           '2018-10-01/generated/azure_mgmt_compute/models/resource.rb'
    autoload :RunCommandResult,                                   '2018-10-01/generated/azure_mgmt_compute/models/run_command_result.rb'
    autoload :VirtualMachineSizeListResult,                       '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_size_list_result.rb'
    autoload :RunCommandListResult,                               '2018-10-01/generated/azure_mgmt_compute/models/run_command_list_result.rb'
    autoload :RecoveryWalkResponse,                               '2018-10-01/generated/azure_mgmt_compute/models/recovery_walk_response.rb'
    autoload :VirtualMachineScaleSetNetworkConfigurationDnsSettings, '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_configuration_dns_settings.rb'
    autoload :OSDiskImage,                                        '2018-10-01/generated/azure_mgmt_compute/models/osdisk_image.rb'
    autoload :RunCommandDocumentBase,                             '2018-10-01/generated/azure_mgmt_compute/models/run_command_document_base.rb'
    autoload :UsageName,                                          '2018-10-01/generated/azure_mgmt_compute/models/usage_name.rb'
    autoload :RunCommandParameterDefinition,                      '2018-10-01/generated/azure_mgmt_compute/models/run_command_parameter_definition.rb'
    autoload :VirtualMachineCaptureParameters,                    '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_capture_parameters.rb'
    autoload :VirtualMachineScaleSetNetworkProfile,               '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_profile.rb'
    autoload :UpgradeOperationHistoricalStatusInfo,               '2018-10-01/generated/azure_mgmt_compute/models/upgrade_operation_historical_status_info.rb'
    autoload :VirtualMachineScaleSetUpdateNetworkProfile,         '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_network_profile.rb'
    autoload :VirtualHardDisk,                                    '2018-10-01/generated/azure_mgmt_compute/models/virtual_hard_disk.rb'
    autoload :RunCommandInput,                                    '2018-10-01/generated/azure_mgmt_compute/models/run_command_input.rb'
    autoload :DataDisk,                                           '2018-10-01/generated/azure_mgmt_compute/models/data_disk.rb'
    autoload :VirtualMachineScaleSetExtensionListResult,          '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension_list_result.rb'
    autoload :WinRMListener,                                      '2018-10-01/generated/azure_mgmt_compute/models/win_rmlistener.rb'
    autoload :VirtualMachineScaleSetExtensionProfile,             '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension_profile.rb'
    autoload :SshConfiguration,                                   '2018-10-01/generated/azure_mgmt_compute/models/ssh_configuration.rb'
    autoload :VirtualMachineScaleSetVMProfile,                    '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmprofile.rb'
    autoload :OSProfile,                                          '2018-10-01/generated/azure_mgmt_compute/models/osprofile.rb'
    autoload :VirtualMachineScaleSetUpdateVMProfile,              '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_vmprofile.rb'
    autoload :DiagnosticsProfile,                                 '2018-10-01/generated/azure_mgmt_compute/models/diagnostics_profile.rb'
    autoload :RunCommandInputParameter,                           '2018-10-01/generated/azure_mgmt_compute/models/run_command_input_parameter.rb'
    autoload :BootDiagnosticsInstanceView,                        '2018-10-01/generated/azure_mgmt_compute/models/boot_diagnostics_instance_view.rb'
    autoload :LogAnalyticsOperationResult,                        '2018-10-01/generated/azure_mgmt_compute/models/log_analytics_operation_result.rb'
    autoload :ProximityPlacementGroupListResult,                  '2018-10-01/generated/azure_mgmt_compute/models/proximity_placement_group_list_result.rb'
    autoload :LogAnalyticsOutput,                                 '2018-10-01/generated/azure_mgmt_compute/models/log_analytics_output.rb'
    autoload :VirtualMachineExtensionsListResult,                 '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_extensions_list_result.rb'
    autoload :LogAnalyticsInputBase,                              '2018-10-01/generated/azure_mgmt_compute/models/log_analytics_input_base.rb'
    autoload :ListUsagesResult,                                   '2018-10-01/generated/azure_mgmt_compute/models/list_usages_result.rb'
    autoload :VirtualMachineScaleSetVMInstanceIDs,                '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_ids.rb'
    autoload :KeyVaultKeyReference,                               '2018-10-01/generated/azure_mgmt_compute/models/key_vault_key_reference.rb'
    autoload :VirtualMachineScaleSetVMInstanceRequiredIDs,        '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vminstance_required_ids.rb'
    autoload :AdditionalCapabilities,                             '2018-10-01/generated/azure_mgmt_compute/models/additional_capabilities.rb'
    autoload :VirtualMachineStatusCodeCount,                      '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_status_code_count.rb'
    autoload :VaultCertificate,                                   '2018-10-01/generated/azure_mgmt_compute/models/vault_certificate.rb'
    autoload :VirtualMachineScaleSetInstanceViewStatusesSummary,  '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_instance_view_statuses_summary.rb'
    autoload :VirtualMachineAgentInstanceView,                    '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_agent_instance_view.rb'
    autoload :VirtualMachineScaleSetVMExtensionsSummary,          '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmextensions_summary.rb'
    autoload :VirtualMachineScaleSetVMListResult,                 '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmlist_result.rb'
    autoload :VirtualMachineScaleSetInstanceView,                 '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_instance_view.rb'
    autoload :Plan,                                               '2018-10-01/generated/azure_mgmt_compute/models/plan.rb'
    autoload :VirtualMachineScaleSetListResult,                   '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_result.rb'
    autoload :WindowsConfiguration,                               '2018-10-01/generated/azure_mgmt_compute/models/windows_configuration.rb'
    autoload :VirtualMachineScaleSetListWithLinkResult,           '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_with_link_result.rb'
    autoload :UpdateResource,                                     '2018-10-01/generated/azure_mgmt_compute/models/update_resource.rb'
    autoload :VirtualMachineScaleSetSkuCapacity,                  '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku_capacity.rb'
    autoload :UpgradeOperationHistoricalStatusInfoProperties,     '2018-10-01/generated/azure_mgmt_compute/models/upgrade_operation_historical_status_info_properties.rb'
    autoload :VirtualMachineScaleSetSku,                          '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku.rb'
    autoload :AutomaticOSUpgradeProperties,                       '2018-10-01/generated/azure_mgmt_compute/models/automatic_osupgrade_properties.rb'
    autoload :VirtualMachineScaleSetListSkusResult,               '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_list_skus_result.rb'
    autoload :NetworkProfile,                                     '2018-10-01/generated/azure_mgmt_compute/models/network_profile.rb'
    autoload :ApiErrorBase,                                       '2018-10-01/generated/azure_mgmt_compute/models/api_error_base.rb'
    autoload :AvailabilitySet,                                    '2018-10-01/generated/azure_mgmt_compute/models/availability_set.rb'
    autoload :AvailabilitySetUpdate,                              '2018-10-01/generated/azure_mgmt_compute/models/availability_set_update.rb'
    autoload :ProximityPlacementGroup,                            '2018-10-01/generated/azure_mgmt_compute/models/proximity_placement_group.rb'
    autoload :ProximityPlacementGroupUpdate,                      '2018-10-01/generated/azure_mgmt_compute/models/proximity_placement_group_update.rb'
    autoload :VirtualMachineExtensionImage,                       '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_extension_image.rb'
    autoload :VirtualMachineImageResource,                        '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_image_resource.rb'
    autoload :VirtualMachineExtension,                            '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_extension.rb'
    autoload :VirtualMachineExtensionUpdate,                      '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_extension_update.rb'
    autoload :VirtualMachineImage,                                '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_image.rb'
    autoload :VirtualMachineCaptureResult,                        '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_capture_result.rb'
    autoload :ImageReference,                                     '2018-10-01/generated/azure_mgmt_compute/models/image_reference.rb'
    autoload :ManagedDiskParameters,                              '2018-10-01/generated/azure_mgmt_compute/models/managed_disk_parameters.rb'
    autoload :NetworkInterfaceReference,                          '2018-10-01/generated/azure_mgmt_compute/models/network_interface_reference.rb'
    autoload :VirtualMachine,                                     '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine.rb'
    autoload :VirtualMachineUpdate,                               '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_update.rb'
    autoload :Image,                                              '2018-10-01/generated/azure_mgmt_compute/models/image.rb'
    autoload :ImageUpdate,                                        '2018-10-01/generated/azure_mgmt_compute/models/image_update.rb'
    autoload :VirtualMachineScaleSetIPConfiguration,              '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_ipconfiguration.rb'
    autoload :VirtualMachineScaleSetUpdateIPConfiguration,        '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_ipconfiguration.rb'
    autoload :VirtualMachineScaleSetNetworkConfiguration,         '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_network_configuration.rb'
    autoload :VirtualMachineScaleSetUpdateNetworkConfiguration,   '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update_network_configuration.rb'
    autoload :VirtualMachineScaleSetExtension,                    '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_extension.rb'
    autoload :VirtualMachineScaleSet,                             '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set.rb'
    autoload :VirtualMachineScaleSetVMReimageParameters,          '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vmreimage_parameters.rb'
    autoload :VirtualMachineScaleSetReimageParameters,            '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_reimage_parameters.rb'
    autoload :VirtualMachineScaleSetUpdate,                       '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_update.rb'
    autoload :VirtualMachineScaleSetVM,                           '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_vm.rb'
    autoload :RollingUpgradeStatusInfo,                           '2018-10-01/generated/azure_mgmt_compute/models/rolling_upgrade_status_info.rb'
    autoload :RequestRateByIntervalInput,                         '2018-10-01/generated/azure_mgmt_compute/models/request_rate_by_interval_input.rb'
    autoload :ThrottledRequestsInput,                             '2018-10-01/generated/azure_mgmt_compute/models/throttled_requests_input.rb'
    autoload :RunCommandDocument,                                 '2018-10-01/generated/azure_mgmt_compute/models/run_command_document.rb'
    autoload :StatusLevelTypes,                                   '2018-10-01/generated/azure_mgmt_compute/models/status_level_types.rb'
    autoload :AvailabilitySetSkuTypes,                            '2018-10-01/generated/azure_mgmt_compute/models/availability_set_sku_types.rb'
    autoload :ProximityPlacementGroupType,                        '2018-10-01/generated/azure_mgmt_compute/models/proximity_placement_group_type.rb'
    autoload :OperatingSystemTypes,                               '2018-10-01/generated/azure_mgmt_compute/models/operating_system_types.rb'
    autoload :VirtualMachineSizeTypes,                            '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_size_types.rb'
    autoload :CachingTypes,                                       '2018-10-01/generated/azure_mgmt_compute/models/caching_types.rb'
    autoload :DiskCreateOptionTypes,                              '2018-10-01/generated/azure_mgmt_compute/models/disk_create_option_types.rb'
    autoload :StorageAccountTypes,                                '2018-10-01/generated/azure_mgmt_compute/models/storage_account_types.rb'
    autoload :DiffDiskOptions,                                    '2018-10-01/generated/azure_mgmt_compute/models/diff_disk_options.rb'
    autoload :PassNames,                                          '2018-10-01/generated/azure_mgmt_compute/models/pass_names.rb'
    autoload :ComponentNames,                                     '2018-10-01/generated/azure_mgmt_compute/models/component_names.rb'
    autoload :SettingNames,                                       '2018-10-01/generated/azure_mgmt_compute/models/setting_names.rb'
    autoload :ProtocolTypes,                                      '2018-10-01/generated/azure_mgmt_compute/models/protocol_types.rb'
    autoload :ResourceIdentityType,                               '2018-10-01/generated/azure_mgmt_compute/models/resource_identity_type.rb'
    autoload :MaintenanceOperationResultCodeTypes,                '2018-10-01/generated/azure_mgmt_compute/models/maintenance_operation_result_code_types.rb'
    autoload :UpgradeMode,                                        '2018-10-01/generated/azure_mgmt_compute/models/upgrade_mode.rb'
    autoload :OperatingSystemStateTypes,                          '2018-10-01/generated/azure_mgmt_compute/models/operating_system_state_types.rb'
    autoload :IPVersion,                                          '2018-10-01/generated/azure_mgmt_compute/models/ipversion.rb'
    autoload :VirtualMachinePriorityTypes,                        '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_priority_types.rb'
    autoload :VirtualMachineEvictionPolicyTypes,                  '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_eviction_policy_types.rb'
    autoload :VirtualMachineScaleSetSkuScaleType,                 '2018-10-01/generated/azure_mgmt_compute/models/virtual_machine_scale_set_sku_scale_type.rb'
    autoload :UpgradeState,                                       '2018-10-01/generated/azure_mgmt_compute/models/upgrade_state.rb'
    autoload :UpgradeOperationInvoker,                            '2018-10-01/generated/azure_mgmt_compute/models/upgrade_operation_invoker.rb'
    autoload :RollingUpgradeStatusCode,                           '2018-10-01/generated/azure_mgmt_compute/models/rolling_upgrade_status_code.rb'
    autoload :RollingUpgradeActionType,                           '2018-10-01/generated/azure_mgmt_compute/models/rolling_upgrade_action_type.rb'
    autoload :IntervalInMins,                                     '2018-10-01/generated/azure_mgmt_compute/models/interval_in_mins.rb'
    autoload :InstanceViewTypes,                                  '2018-10-01/generated/azure_mgmt_compute/models/instance_view_types.rb'
  end
end
