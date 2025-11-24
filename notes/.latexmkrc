@default_files = ('main.tex');
$pdf_mode = 4;
$postscript_mode = $dvi_mode = 0;
$out_dir = '.build';
$clean_ext .= '%R.aux %R.dvi %R.log %R.out tex~';
$clean_full_ext = 'bbl synctex.gz .build';
set_tex_cmds('--shell-escape --synctex=1 --halt-on-error %O %S');
add_hook('after_main_pdf', sub{ copy "$$Pdest", "notes.pdf",; return 0; });
