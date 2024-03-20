extends GdUnitTestSuite

## tests ##########################################

func test_log_params():
	var val = Log.to_printable([1, 2, 3])
	assert_that(val).is_equal("1 2 3")

func test_log_array():
	var val = Log.to_printable([[1, 2, 3]])
	assert_that(val).is_equal("[color=red][ [/color]1[color=red], [/color]2[color=red], [/color]3[color=red] ][/color]")

func test_log_vector():
	var val = Log.to_printable([Vector2(1, 2)])
	assert_that(val).is_equal("([color=purple]1[/color],[color=purple]2[/color])")

func test_log_dictionary():
	var val = Log.to_printable([{some="val", another=2}])
	assert_that(val).is_equal(
		"[color=red]{ [/color][color=magenta]\"some\"[/color]: [color=pink]val[/color][color=red], [/color][color=magenta]\"another\"[/color]: 2[color=red] }[/color]")

func test_log_strings_and_string_names():
	var val = Log.to_printable(["Special"])
	assert_that(val).is_equal("[color=pink]Special[/color]")
