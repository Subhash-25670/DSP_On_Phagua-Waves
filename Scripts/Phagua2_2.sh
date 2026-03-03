#!/bin/bash

# ============================================
# Phagua Wave Audio Cutter Script
# Author: Subhash Kumar
# Description: Cuts specific segments from input audio
# Usage: ./Phagua2_cut.sh <input-file> <output-directory>
# ============================================

INPUT="$1"
OUTPUT_DIR="$2"

# ---- Validation ----
if [ -z "$INPUT" ] || [ -z "$OUTPUT_DIR" ]; then
    echo "Usage: ./Phagua2_cut.sh <input-file> <output-directory>"
    exit 1
fi

if [ ! -f "$INPUT" ]; then
    echo "Error: Input file not found!"
    exit 1
fi

if [ ! -d "$OUTPUT_DIR" ]; then
    echo "Error: Output directory does not exist!"
    exit 1
fi

echo "Processing audio..."

# ---- Cutting Segments ----
ffmpeg -hide_banner -loglevel error -i "$INPUT" -ss 00:07:42 -to 00:12:08 -c copy "$OUTPUT_DIR/Maliniya_kre_Pukar.mp3"

ffmpeg -hide_banner -loglevel error -i "$INPUT" -ss 00:19:13 -to 00:23:00 -c copy "$OUTPUT_DIR/Bharmare.mp3"

echo "Done. Files saved to $OUTPUT_DIR"
