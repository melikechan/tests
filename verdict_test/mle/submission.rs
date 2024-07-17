fn main(){
    let mut v = Vec::new();
    v.resize(5e7 as usize, 0);

    for i in 0..5e7 as usize {
        v[i] = i;
    }
}