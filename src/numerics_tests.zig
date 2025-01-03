const std = @import("std");
const numerics = @import("numerics.zig");

const print = std.debug.print;


test "vec3 tests" {
    const vec3   = numerics.vec3;
    const mat4x4 = numerics.mat4x4;

    const a = vec3.one();
    const r = mat4x4.createRotationZFromCenterPoint (45.0, a);

    print("{d}\n", .{r});
    print("{d}\n", .{vec3.dot(a, a)});
    print("{d}\n", .{vec3.normalize(a)});
    print("{d}\n", .{vec3.sqrt(a)});
    print("{}\n", .{vec3.equal(a, vec3.one())});
}
