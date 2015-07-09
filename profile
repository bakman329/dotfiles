PATH=/usr/local/bin:$PATH
# alias gcc='/usr/local/bin/gcc-4.9'
# alias g++='/usr/local/bin/g++-4.9'
alias gcc='/usr/local/bin/gcc-5'
alias g++='/usr/local/bin/g++-5'
alias clang='/usr/local/bin/clang'

# Add GHC 7.8.4 to the PATH, via http://ghcformacosx.github.io/
export GHC_DOT_APP="/Applications/ghc-7.8.4.app"
if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
fi

export PKG_CONFIG_PATH="/usr/local/Cellar/glib/2.40.0_1/lib/pkgconfig/"
