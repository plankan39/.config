# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

p10k_instant_prompt="${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" 
if [[ -r $p10k_instant_prompt ]]; then
  source $p10k_instant_prompt 
fi
unset p10k_instant_prompt


## exported variables
# Path to your oh-my-zsh installation.
export ZSH="$ZDOTDIR/.oh-my-zsh"

#HISTFILE
export HISTFILE=$XDG_CACHE_HOME/.zsh_history

# Preferred editor
export EDITOR='nvim'

## ZSH variables
# ZSH THEME
ZSH_THEME="powerlevel10k/powerlevel10k"

# Case/hyphen-sensitiv completion
CASE_INSENSITIVE="true"
HYPHEN_INSENSITIVE="true"

# auto-correction.
ENABLE_CORRECTION="true"

# title of terminal auto
# DISABLE_AUTO_TITLE="true"

# HIST_STAMPS. You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

#plugins
plugins=(
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
)

## config file to source
[[ -f $ZSH/oh-my-zsh.sh ]] && source $ZSH/oh-my-zsh.sh

# custom rcfiles
for file in $ZDOTDIR/custom/*; do source $file; done

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f $ZDOTDIR/.p10k.zsh ]] || source $ZDOTDIR/.p10k.zsh
