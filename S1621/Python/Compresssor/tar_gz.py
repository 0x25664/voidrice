import tarfile
from tqdm import tqdm

def compress_tar_gz(tar_file, members):
        tar = tarfile.open(tar_file, mode="w:gz")
        progress = tqdm(members)
        for member in progress:
                tar.add(member)
                progress.set_description(f"Compressing {member}")
        tar.close()
def decompress_tar_gz(tar_file, path, members=None):
        tar = tarfile.open(tarfile, mode="r:gz")
        if members is None:
                members = tar.getmembers()
        progress = tqdm(members)
        for member in progress:
                tar.extract(member, path=path)
                progress.set_description(f"Extracting {member.name}")
        tar.close()