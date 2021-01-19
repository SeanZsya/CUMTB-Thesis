cd /d "%~pd0"

@echo off
set Folder=content
set FileName=GradProj


if not exist "./temp" (
 md temp
 )

xelatex -no-pdf -output-directory=temp --interaction=nonstopmode %Folder%/%FileName%
bibtex ./temp/%FileName%
xelatex -no-pdf -output-directory=temp --interaction=nonstopmode %Folder%/%FileName%
xelatex  -output-directory=temp --interaction=nonstopmode %Folder%/%FileName%


copy /Y ".\temp\%FileName%.pdf" ".\%FileName%.pdf"

start "" GradProj.pdf 
