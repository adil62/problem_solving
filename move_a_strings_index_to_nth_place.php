<?php

function movePlaces($str, $pos, $places) {
  if (($pos-1) + $places > (strlen($str)-1)) {
    return 'the request is invalid';
  }
  
  $arr = str_split($str);
  $newArr = [];
  for ($i=0; $i< sizeof($arr); $i++) { 
      if ($i != $pos-1) {
        $newArr[] = $arr[$i];
      }
      if ($i == ($pos-1) + $places) {
         $newArr[] = $arr[$pos-1];
      }
   }
   return implode('', $newArr); 
}              
         
echo movePlaces('elephant', 3, 5);