#!/bin/bash

input="$1"

ffmpeg -i "$input" -ss 00:07:42 -to 00:12:08 -c copy Maliniya_kre_Pukar_ho_Bagaicha_Ujad_gye_Rawan_ke.mp3
ffmpeg -i "$input" -ss 00:19:13 -to 00:23:00 -c copy Bharmare_hai_Nanda_ke_lal_kesariya_rang_se_bhar_mare.mp3

