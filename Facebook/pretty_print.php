<?php

$file = fopen("../data/<file>.json","r");

$posts=array();

while(!feof($file))
{
  $post=fgets($file);
  array_push($posts,$post);
}
fclose($file);

file_put_contents('../data/<file>-pretty.json', print_r(json_encode($posts), true));

?>
