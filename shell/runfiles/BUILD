load("//shell:sh_library.bzl", "sh_library")

sh_library(
    name = "runfiles",
    srcs = [":runfiles.bash"],
    visibility = ["//visibility:public"],
)

exports_files(
    ["runfiles.bash"],
    visibility = ["//tests/runfiles:__pkg__"],
)
