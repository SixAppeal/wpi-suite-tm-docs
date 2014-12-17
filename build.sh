for f in `find md -mindepth 1`; do
	echo Converting $f;
	pandoc -o out/$(basename ${f} .md).html --include-in-header=res/header.html.inc -A res/footer.html.inc $f;
done
