# ============================================================
# Environment Variables
# ============================================================

# Proxy config
export http_proxy=http://127.0.0.1:10808
export https_proxy=http://127.0.0.1:10808

# Compiler settings
export CC=clang
export CXX=clang++

# Cmake config
export CMAKE_BUILD_PARALLEL_LEVEL=$(nproc)

# Wow
# wow server azerothcore
export AC_CODE_DIR=$HOME/Project/azerothcore

# wow client 
export WOW_CLIENT_DIR=$HOME/Project/Wow

alias make='make -j$(nproc)'

cmake() {
  if [[ "$1" == ".." ]]; then
    shift
    command cmake .. -G Ninja -DCMAKE_COLOR_DIAGNOSTICS=ON -DCMAKE_EXPORT_COMPILE_COMMANDS=ON "$@"
  else
    command cmake "$@"
  fi
}

# ============================================================
# ZSH Plugins 
# ============================================================

export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh


# ============================================================
# Powerlevel10k Config 
# ============================================================

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
