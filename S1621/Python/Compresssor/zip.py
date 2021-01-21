from zipfile import ZipFile
import zipfile

def decompress_zip(file_name):
        with ZipFile(file_name, 'r') as zip:
                zip.printdir()
                print(f'Extracting {file_name}')
                zip.extractall()

def compress_zip(filename, cmprssd_filename):
        try:
                import zlib
                mode = zipfile.ZIP_DEFLATED
        except:
                mode = zipfile.ZIP_STORED

        zip = zipfile.ZipFile(cmprssd_filename, 'w', mode)
        print(f'Compressing {filename}')
        zip.write(filename)
        zip.close()