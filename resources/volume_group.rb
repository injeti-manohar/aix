#
# Copyright:: 2016, International Business Machines Corporation
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
#

actions :create
default_action :create
attr_accessor :exists

attribute :name, name_attribute: true, kind_of: String
attribute :physical_volumes, kind_of: Array, required: true
attribute :use_as_hot_spare, kind_of: String, default: 'n', equal_to: %w(y n)
