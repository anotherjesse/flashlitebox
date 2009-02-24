
# end
all:      flashlitebox.swf

classes.swf:
	mtasc -v -version 7 -swf classes.swf -header 1:1:30 -cp lib/std -cp lib/std8 -cp lib -cp src Application.as Arrows.as

flashlitebox.swf: classes.swf src/application.xml src/maximize.png
	swfmill -v simple src/application.xml flashlitebox.swf

clean:
	rm classes.swf flashlitebox.swf
