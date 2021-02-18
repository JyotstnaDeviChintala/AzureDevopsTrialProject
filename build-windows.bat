@SET Config=Debug
@SET Platform=x64

@set INSTALL_DIR=..\builds\AzureDevopsTrialProject\lastbuild

@mkdir ..\builds\AzureDevopsTrialProject\buildsystem

@mkdir ..\builds\AzureDevopsTrialProject\lastbuild

@SET INSTALL_PATH=..\builds\AzureDevopsTrialProject\lastbuild
@cmake -G "Visual Studio 15 2017" ^
        -DCMAKE_GENERATOR_INSTANCE="C:/Program Files (x86)/Microsoft Visual Studio/2017/Professional" ^
        -DCMAKE_GENERATOR_PLATFORM=%Platform% ^
        -DCMAKE_FIND_ROOT_PATH=%INSTALL_DIR% -DCMAKE_PREFIX_PATH=%INSTALL_DIR% ^
        -DCMAKE_BUILD_TYPE=%Config% ^
        -DCMAKE_OSX_ARCHITECTURES=x86_64
@cmake --build . --config %Config% --target install -j %NUMBER_OF_PROCESSORS%