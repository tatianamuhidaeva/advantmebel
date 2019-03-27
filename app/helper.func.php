<?php
function valid_phone($value)
{
	$value=strtolower(trim($value));
	return ( 1 == preg_match(
		'/^\+7\s\(\d{3}\)\s\d{3}\-\d{4}$/' ,$value));
}