#!/bin/bash

find ./ -name "*.docx" -type f | while read one; do
    filename=$(basename -s .docx $one);
    fix_filename=$(echo $filename | sed 's/ /_/g')

    echo $fix_filename;

    pandoc --extract-media="_media/$fix_filename" -f docx -t markdown "$one" -o output/$fix_filename.md;

done

rm -rf output/_media
mv -f _media/ output/
