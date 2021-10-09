<?php

/*
    A digital counter has three positions, where the leftmost position is the most significant and the rightmost position is the least significant.
    The maximum value for each position is as follows
    Leftmost - 100
    Middle - 5
    Rightmost - 20
    The smallest value of the counter is 1-1-1 and the largest value of the counter is 100-5-20. If the counter reaches the largest value, it should restart from 1-1-1.
    Write a program that accepts the current value of the counter and then calculate the next value.
    For e.g:
    if the current value of the counter is 1-1-1, the next number will be 1-1-2.
    if the current value of the counter is 1-5-20, the next number will be 2-1-1.
*/ 
 
function calculateCounter(string $currentValue) : string {
	$leftMostCounterMax = 100;
	$middleCounterMax = 5;
	$rightCounterMax = 20;


	// increment the counter

	[
        $currentLeftCounterValue, 
        $currentMiddleCounterValue, 
        $currentRightCounterValue
    ] = explode('-', $currentValue);
	
    $nextCounterValue = [
        $currentLeftCounterValue  , 
        $currentMiddleCounterValue , 
        $currentRightCounterValue
    ];

    // increase rightmost if right most is !max else reset counter
    
    if ($currentRightCounterValue < $rightCounterMax) {
        $nextCounterValue[2] = $nextCounterValue[2] + 1;
    } else {
        $nextCounterValue[2] = 1;
    }

    // increase middleone if right is full and middle is !max else reset counter
    
    if ($currentMiddleCounterValue < $middleCounterMax && $currentRightCounterValue == $rightCounterMax) {
        $nextCounterValue[1] = $nextCounterValue[1] + 1;
    } else if ($currentMiddleCounterValue == $middleCounterMax) {
        $nextCounterValue[1] = 1;
    }
    
    // increase leftmost if middle is full and left is !max else reset counter
    
    if ($currentLeftCounterValue < $leftMostCounterMax && $currentMiddleCounterValue == $middleCounterMax) {
        $nextCounterValue[0] = $nextCounterValue[0] + 1;
    } else if ($currentLeftCounterValue == $leftMostCounterMax) {
        $nextCounterValue[0] = 1;
    }

   
	return implode('-', $nextCounterValue);
}

echo calculateCounter('100-5-19');