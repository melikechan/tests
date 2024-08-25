use std::{io, error::Error};

fn main() -> Result<(), Box<dyn Error>>{
    let input = take_input()?;
    let mut input = input
                                                    .split(" ")
                                                    .map(|x| x.parse::<u32>().unwrap());
    input.next().unwrap();

    let vinp = take_input()?;
    let v: Vec<u32> = vinp
                                    .split(" ")
                                    .map(|x| x.parse::<u32>().unwrap())
                                    .collect();


    let mut maxx = v[0];
    let mut idx = 0;
    
    for i in 1..v.len() {
        if v[i] > maxx {
            maxx = v[i];
            idx = i;
        }
    }

    println!("{}", idx);
    Ok(())
}

fn take_input() -> Result<String, Box<dyn Error>> {
    let mut input = String::new();
    io::stdin().read_line(&mut input)?;
    let input = input.trim().to_string();

    Ok(input)
}