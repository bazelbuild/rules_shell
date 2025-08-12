load("@rules_shell//shell/private:sh_binary.bzl", "sh_binary")  # buildifier: disable=bzl-visibility
load("@rules_shell//shell/private:sh_library.bzl", "sh_library")  # buildifier: disable=bzl-visibility
load("@rules_shell//shell/private:sh_test.bzl", "sh_test")  # buildifier: disable=bzl-visibility

sh_library(
    name = "lib",
    srcs = ["lib.sh"],
    data = ["greeting.txt"],
)

sh_binary(
    name = "bin",
    srcs = ["bin.sh"],
    use_bash_launcher = True,
    deps = [":lib"],
)

sh_test(
    name = "test",
    srcs = ["test.sh"],
    data = [":bin"],
    use_bash_launcher = True,
)
