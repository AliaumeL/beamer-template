add_cus_dep('svg', 'pdf', 0, 'svg2pdf');
sub svg2pdf {
   	return system("inkscape --export-area-drawing --export-text-to-path --export-pdf=\"$_[0].pdf\" \"$_[0].svg\"");

}

