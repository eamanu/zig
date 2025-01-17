const std = @import("std");
const expect = std.testing.expect;

const Foo = struct {
    usingnamespace Mixin;
};

const Mixin = struct {
    pub fn two(self: Foo) void {}
};

test "container member access usingnamespace decls" {
    var foo = Foo{};
    foo.two();
}
