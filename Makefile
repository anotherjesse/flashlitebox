all:      flashlitebox.swf

classes.swf: src/*.as
	mtasc -v -swf classes.swf -header 1:1:30 -cp src Application.as Arrows.as

flashlitebox.swf: classes.swf src/application.xml src/maximize.png
	swfmill -v simple src/application.xml flashlitebox.swf

clean:
	rm classes.swf flashlitebox.swf
