# -*- coding: utf-8 -*-
import os
import distutils
from distutils import dir_util
homepath = os.path.expanduser('~')
src = os.path.abspath(homepath + "/dotfiles/snippets/neosnippets")
dst = os.path.abspath(homepath + "/" + ".vim/dein/.cache/.vimrc/.dein/neosnippets")
distutils.dir_util.copy_tree(src, dst)

src = os.path.abspath(homepath + "/dotfiles/snippets/snippets")
dst = os.path.abspath(homepath + "/" + ".vim/dein/.cache/.vimrc/.dein/snippets")
distutils.dir_util.copy_tree(src, dst)
