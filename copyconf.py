from subprocess import run
import pathlib

CONFIG_REPO_URL="https://www.github.com/brainsaysno/nvim_conf.git"

def main():
    HOME_DIR = pathlib.Path.home()
    NVIM_CONF_DIR = HOME_DIR / ".config/nvim"
    # Backup nvim config if exists
    run(["mv", ".config/nvim", ".config/nvim.bak"], cwd=HOME_DIR)

    # Backup nvim folders
    run(["mv", ".local/share/nvim", ".local/share/nvim"], cwd=HOME_DIR)

    # Clone astronvim
    run(["git", "clone", "--depth", "1", "https://www.github.com/AstroNvim/AstroNvim", ".config/nvim"], cwd=HOME_DIR)

    # Clone config repo
    run(["git", "clone", CONFIG_REPO_URL, "lua/user"], cwd=NVIM_CONF_DIR)
    run(["ln", "-s", "lua/user/ftplugin", "ftplugins"], cwd=NVIM_CONF_DIR)

if __name__ == "__main__":
    main()
