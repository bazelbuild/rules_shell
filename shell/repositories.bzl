# Copyright 2024 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""WORKSPACE dependency macros for the shell rules."""

load("//shell/private/repositories:sh_config.bzl", "sh_config")

visibility("public")

# buildifier: disable=unnamed-macro
def rules_shell_dependencies():
    """Instantiates repositories required by rules_shell."""
    pass

# buildifier: disable=unnamed-macro
def rules_shell_toolchains():
    """Register sh_toolchains for the host and common other platforms."""
    sh_config(name = "local_config_shell")
    native.register_toolchains("@local_config_shell//:all")
