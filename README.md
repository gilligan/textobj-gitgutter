textobj-gitgutter
=================

This vim plugin provides a git change-hunk text object. The following plugins are required for it to work:

  - vim-gitgutter (https://github.com/airblade/vim-gitgutter)
  - textobject-user (https://github.com/kana/vim-textobj-user)

The gitgutter plugin displays signs on lines that have been added/removed/modified. It also exposes an array of hunk metadata which is used by this plugin.

Usage
-----
The default mapping `ih`for an inner hunk. See the included documentation on how to change this to your own key mapping.

Installation
------------
I recommend installing it via vundle ([https://github.com/gmarik/vundle](https://github.com/gmarik/vundle)):

    Bundle 'gilligan/textobj-gitgutter'
