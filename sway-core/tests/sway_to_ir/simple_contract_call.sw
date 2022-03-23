script;

struct S {
    x: u64,
    y: b256,
}

abi Test {
    fn get_u64(val: u64) -> u64;
    fn get_b256(val: b256) -> b256;
    fn get_s(val1: u64, val2: b256) -> S;
}

fn main() -> u64 {
    let caller = abi(Test, 0x0c1c50c2bf5ba4bb351b4249a2f5e7d86556fcb4a6ae90465ff6c86126eeb3c0);

    // We can't use the result of a contract call yet as its type isn't known.
    //let a =
    caller.get_u64 {
        coins: 0,
        asset_id: 0x0000000000000000000000000000000000000000000000000000000000000000,
        gas: 10000,
    }
    (1111);

    //let b =
    caller.get_b256 {
        coins: 0,
        asset_id: 0x0000000000000000000000000000000000000000000000000000000000000000,
        gas: 20000,
    }
    (0x3333333333333333333333333333333333333333333333333333333333333333);

    //let s =
    caller.get_s {
        coins: 0,
        asset_id:0x0000000000000000000000000000000000000000000000000000000000000000,
    }
    (5555, 0x5555555555555555555555555555555555555555555555555555555555555555);
    0
}