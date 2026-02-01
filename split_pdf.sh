#!/usr/bin/env bash

INPUT_PDF="$1"
OUT_DIR="${2:-pages}"

mkdir -p "$OUT_DIR"

pdfseparate "$INPUT_PDF" "$OUT_DIR/page-%03d.pdf"
