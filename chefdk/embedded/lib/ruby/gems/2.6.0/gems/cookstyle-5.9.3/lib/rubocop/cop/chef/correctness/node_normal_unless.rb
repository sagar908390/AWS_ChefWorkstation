#
# Copyright:: Copyright 2019-2019, Chef Software Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
module RuboCop
  module Cop
    module Chef
      module ChefCorrectness
        # Normal attributes are discouraged since their semantics differ importantly from the
        # default and override levels.  Their values persist in the node object even after
        # all code referencing them has been deleted, unlike default and override.
        #
        # Code should be updated to use default or override levels, but this will change
        # attribute merging behavior so needs to be validated manually and force_default or
        # force_override levels may need to be used in recipe code.
        #
        # @example
        #
        #   # bad
        #   node.normal_unless['foo'] = true
        #
        #   # good
        #   node.default_unless['foo'] = true
        #   node.override_unless['foo'] = true
        #   node.force_default_unless['foo'] = true
        #   node.force_override_unless['foo'] = true
        #
        class NodeNormalUnless < Cop
          MSG = 'Do not use node.normal_unless. Replace with default/override/force_default/force_override attribute levels.'.freeze

          def_node_matcher :node_normal_unless?, <<-PATTERN
            (send (send _ :node) :normal_unless)
          PATTERN

          def on_send(node)
            node_normal_unless?(node) do
              add_offense(node, location: :expression, message: MSG, severity: :refactor)
            end
          end
        end
      end
    end
  end
end
