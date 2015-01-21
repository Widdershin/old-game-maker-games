sample = real(string_format(get_string("Sample Size",""),500,500))
valid = real(string_format(get_string("Number Valid",""),500,500))

stddev = real(string_format(get_string("Standard Deviation",""),500,500))

proportion = valid/sample
show_debug_message("Proportion: "+string(proportion))


show_debug_message("Standard Deviation: "+string(stddev))

popdev = sqrt((proportion * (1 - proportion)) / sample)
show_debug_message("Population Deviation: "+string_format(popdev,10,5))

margin = stddev * popdev
show_debug_message("Margin of Error: "+string_format(margin,10,5))

confidlow = proportion - margin
confidhigh = proportion + margin

output = string_format(confidlow,10,5) + " < "+string_format(proportion,10,5)+" < "+string_format(confidhigh,10,5)
show_debug_message(output)
clipboard_set_text(output)
