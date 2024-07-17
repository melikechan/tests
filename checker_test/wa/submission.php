<?php
$n = intval(fgets(STDIN));
$list = explode(' ', fgets(STDIN));

$max_index = 0;
$max_value = $list[0];

for ($i = 1; $i < $n; $i++) {
    if ($list[$i] > $max_value) {
        $max_value = $list[$i];
        $max_index = $i;
    }
}

echo -1;
?>