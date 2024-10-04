load("@rules_shell//shell:sh_binary.bzl", "sh_binary")
load("@rules_shell//shell:sh_library.bzl", "sh_library")
load("@rules_shell//shell:sh_test.bzl", "sh_test")

sh_library(
    name = "lib",
    srcs = ["lib.sh"],
    data = ["greeting.txt"],
    deps = ["@bazel_tools//tools/bash/runfiles"],
)

sh_binary(
    name = "bin",
    srcs = ["bin.sh"],
    deps = [
        ":lib",
        "@bazel_tools//tools/bash/runfiles",
    ],
)

sh_test(
    name = "test",
    srcs = ["test.sh"],
    data = [":bin"],
    deps = ["@bazel_tools//tools/bash/runfiles"],
)
