import tar_gz
import zip

tar_gz.compress_tar_gz("compressed.tar.gz", ["test.xlsx"])
tar_gz.decompress_tar_gz("compressed.tar.gz", "extracted")

zip.decompress_zip("test.zip")
zip.compress_zip("vid.mp4", "cmprssd_vid.zip")

print("If this was printed means code executed till the end")