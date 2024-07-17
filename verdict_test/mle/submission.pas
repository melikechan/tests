program Submission;

type
    TIntArray = array of integer;

var 
    huge: ^TIntArray;
    i: Int64;
    
begin

    new(huge);
    setlength(huge^, 1000000000);
    
    for i := 0 to 999999 do
        huge^[i] := i;
    
    writeln(huge^[999999]);
    
    dispose(huge);
end.
