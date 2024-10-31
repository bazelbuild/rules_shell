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

"""Helper rule to preserve the legacy runfiles path for the runfiles lib."""

def _single_file_or_fail(target):
    files = target[DefaultInfo].files.to_list()
    if len(files) != 1:
        fail("Expected exactly one file in {}, got {}".format(target.label, files))
    return files[0]

def _root_symlinks_impl(ctx):
    runfiles = ctx.runfiles(
        root_symlinks = {
            path: _single_file_or_fail(target)
            for target, path in ctx.attr.root_symlinks.items()
        },
    )
    return [
        DefaultInfo(
            files = depset(),
            runfiles = runfiles,
        ),
    ]

root_symlinks = rule(
    implementation = _root_symlinks_impl,
    attrs = {
        "root_symlinks": attr.label_keyed_string_dict(
            allow_files = True,
            mandatory = True,
        ),
    },
)
