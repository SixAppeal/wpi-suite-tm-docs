for f in `find md -mindepth 1`; do
	pandoc -o out/$(basename ${f} .md).html --include-in-header=res/header.html.inc $f;
done
