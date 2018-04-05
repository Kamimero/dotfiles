# -*- coding: utf-8 -*-
import os
import distutils
from distutils import dir_util
homepath = os.path.expanduser('~')
src = os.path.abspath(homepath + "/dotfiles/cache")
dst = os.path.abspath(homepath + "/.vim/dein/.cache/.vimrc/.dein")
distutils.dir_util.copy_tree(src, dst)
