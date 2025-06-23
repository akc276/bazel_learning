def _impl(ctx):
    print("Hello World from print statement")
    output_file = ctx.actions.declare_file(ctx.attr.output_file)
    ctx.actions.write(
        output = output_file,
        content = "echo Hello World from rule",
        is_executable = True,
    )
    return DefaultInfo(
        executable = output_file,
        files = depset([output_file]),
    )

# This file defines a Bazel rule that prints "Hello World from os_info.bzl"
say_hello = rule(
    implementation = _impl,
    attrs = {
        "output_file": attr.string(
            doc = "Output file name",
            mandatory = True,
        )
    },
    executable = True,
)