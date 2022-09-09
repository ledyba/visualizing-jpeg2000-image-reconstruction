set -eux
ffmpeg -r 10 -f image2 -i "decoded/%d.png" -vcodec libx264 -b:v 4000k -vf "scale=1280:850" -pix_fmt yuv420p -pass 1 -f null -
ffmpeg -r 10 -f image2 -i "decoded/%d.png" -vcodec libx264 -b:v 4000k -vf "scale=1280:850" -pix_fmt yuv420p -pass 2 video.mp4
