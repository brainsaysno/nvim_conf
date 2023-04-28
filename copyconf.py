from subprocess import run

CONFIG_REPO_URL="https://www.github.com/brainsaysno/nvim_conf.git"

def main():
    # Backup nvim config if exists
    run(["mv", "~/.config/nvim", "~/.config/nvim.bak"])

    # Backup nvim folders
    run(["mv", "~/.local/share/nvim", "~/.local/share/nvim"])

    # Clone astronvim
    run(["git", "clone", "--depth 1", "https://www.github.com/AstroNvim/AstroNvim", "~/.config/nvim"])

    # Clone config repo
    run(["git", "clone", CONFIG_REPO_URL, "~/.config/nvim/lua/user"])
    run(["ln", "-s", "~/.config/nvim/lua/user/ftplugin", "~/.config/nvim/ftplugins"])

if __name__ == "__main__":
    main()
