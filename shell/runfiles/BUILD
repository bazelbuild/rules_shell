load("//shell:sh_library.bzl", "sh_library")
load("//shell/private:root_symlinks.bzl", "root_symlinks")

sh_library(
    name = "runfiles",
    data = [":runfiles_at_legacy_location"],
    visibility = ["//visibility:public"],
)

root_symlinks(
    name = "runfiles_at_legacy_location",
    root_symlinks = {
        "runfiles.bash": "bazel_tools/tools/bash/runfiles/runfiles.bash",
    },
)
