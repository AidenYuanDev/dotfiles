# ============================================================
# Powerlevel10k instant prompt 
# ============================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ============================================================
# Pyenv
# ============================================================
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ============================================================
# Aliases & Functions
# ============================================================
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
# Oh-My-Zsh
# ============================================================
export ZSH="$HOME/.oh-my-zsh"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# ============================================================
# Powerlevel10k
# ============================================================
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme
POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
