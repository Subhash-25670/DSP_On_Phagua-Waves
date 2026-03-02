#!/bin/bash

input="$1"

ffmpeg -i "$input" -ss 00:00:00 -to 00:05:44 -c copy Sumirahu_Shree_Bhagwan.mp3
ffmpeg -i "$input" -ss 00:06:15 -to 00:08:15 -c copy Devi_ke_Dware_Mata.mp3
ffmpeg -i "$input" -ss 00:09:00 -to 00:13:36 -c copy Rama_shayam_Duno_khele_Holi.mp3
ffmpeg -i "$input" -ss 00:17:20 -to 00:31:38 -c copy GajDamba_Jaikal_Khele_HOli.mp3
