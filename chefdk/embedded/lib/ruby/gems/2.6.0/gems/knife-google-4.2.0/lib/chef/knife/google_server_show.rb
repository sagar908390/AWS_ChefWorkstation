# frozen_string_literal: true
#
# Author:: Chef Partner Engineering (<partnereng@chef.io>)
# Copyright:: Copyright 2016 Chef Software, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "chef/knife"
require "chef/knife/cloud/server/show_options"
require "chef/knife/cloud/server/show_command"
require "chef/knife/cloud/google_service"
require "chef/knife/cloud/google_service_helpers"
require "chef/knife/cloud/google_service_options"

class Chef
  class Knife
    class Cloud
      class GoogleServerShow < ServerShowCommand
        include ServerShowOptions
        include GoogleServiceHelpers
        include GoogleServiceOptions

        banner "knife google server show INSTANCE_NAME (options)"

        def validate_params!
          check_for_missing_config_values!(:gce_zone)
          raise "You must supply an instance name to display" if @name_args.empty?
          raise "You may only supply one instance name" if @name_args.size > 1

          super
        end
      end
    end
  end
end
