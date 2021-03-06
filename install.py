#!/usr/bin/python
"""
    install.py
    ~~~~~~~~~~

    Script to install dotfiles
"""
from __future__ import print_function
import shutil
import os


def install():

  # Get user home path
  home_path = os.path.expanduser('~')

  # TMUX
  print('Installing tmux configuration...', end='')
  tmux_file = 'tmux/.tmux.conf'
  shutil.copy(tmux_file, home_path)
  print('Done')

  # VIM 
  print('Installing vim configuration...', end='')
  vim_file = 'vim/.vimrc'
  shutil.copy(vim_file, home_path)
  print('Done')

  print('All dotfiles installed!')


if __name__=='__main__':
  install()

