all:      flashlitebox.swf

classes.swf: src/*.as
	mtasc -v -swf classes.swf -header 1:1:30 -cp src Application.as Arrows.as

flashlitebox.swf: classes.swf src/flashlitebox.xml src/maximize.png
	swfmill -v simple src/flashlitebox.xml flashlitebox.swf

clean:
	rm classes.swf flashlitebox.swf
