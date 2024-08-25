Program Submission;
var
    n, i, max, maxIndex: integer;
    arr: array[1..1000] of integer;
begin
    readln(n);
    max := -1;
    for i := 1 to n do
    begin
        read(arr[i]);
        if arr[i] > max then
        begin
            max := arr[i];
            maxIndex := i;
        end;
    end;
    writeln(-1);
end.