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

actions :create, :drop

attribute :host, :kind_of => String, :required => true
attribute :port, :kind_of => Integer, :default => 5432
attribute :admin_username, :kind_of => String, :default => nil
attribute :admin_password, :kind_of => String, :default => nil

attribute :database, :kind_of => String, :name_attribute => true
attribute :owner, :kind_of => String, :required => true
attribute :encoding, :kind_of => String, :default => 'DEFAULT'
attribute :template, :kind_of => String, :default => nil
attribute :tablespace, :kind_of => String, :default => nil
attribute :collation, :kind_of => String, :default => nil
attribute :connection_limit, :kind_of => String, :default => nil

attribute :bash_user, :kind_of => String, :default => 'postgres'
attribute :bash_group, :kind_of => String, :default => 'postgres'

default_action :create
