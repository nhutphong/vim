 # List of plugins
set -g @tpm_plugins '           \
   tmux-plugins/tpm             \
   tmux-plugins/tmux-sensible   \
   tmux-plugins/tmux-resurrect  \
   tmux-plugins/tmux-continuum  \
   tmux-plugins/tmux-yank       \
'

set -g @continuum-restore 'on'

# Initialize TMUX plugin manager (keep this line at the very bottom of tmux.conf)
run '~/.tmux/plugins/tpm/tpm'
