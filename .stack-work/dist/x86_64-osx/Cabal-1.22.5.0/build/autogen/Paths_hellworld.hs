module Paths_hellworld (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/lorancechen/version_control_project/_personal/haskell/stack-builder/hellworld/.stack-work/install/x86_64-osx/lts-6.1/7.10.3/bin"
libdir     = "/Users/lorancechen/version_control_project/_personal/haskell/stack-builder/hellworld/.stack-work/install/x86_64-osx/lts-6.1/7.10.3/lib/x86_64-osx-ghc-7.10.3/hellworld-0.1.0.0-3s6tG2TYF7fIYayAZNLhNw"
datadir    = "/Users/lorancechen/version_control_project/_personal/haskell/stack-builder/hellworld/.stack-work/install/x86_64-osx/lts-6.1/7.10.3/share/x86_64-osx-ghc-7.10.3/hellworld-0.1.0.0"
libexecdir = "/Users/lorancechen/version_control_project/_personal/haskell/stack-builder/hellworld/.stack-work/install/x86_64-osx/lts-6.1/7.10.3/libexec"
sysconfdir = "/Users/lorancechen/version_control_project/_personal/haskell/stack-builder/hellworld/.stack-work/install/x86_64-osx/lts-6.1/7.10.3/etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "hellworld_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "hellworld_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "hellworld_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "hellworld_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "hellworld_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
