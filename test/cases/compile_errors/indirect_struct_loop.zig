const A = struct {
    b: B,
};
const B = struct {
    c: C,
};
const C = struct {
    a: A,
};
export fn entry() usize {
    return @sizeOf(A);
}

// error
// backend=stage2
// target=native
//
// :1:11: error: struct 'tmp.A' depends on itself
