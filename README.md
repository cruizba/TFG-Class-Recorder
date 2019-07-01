# TFG-Bike3S

Instructions:
```
git clone https://github.com/cruizba/TFG-Class-Recorder.git
cd TFG-Class-Recorder
docker run -it -v $(pwd):/home/userdocker/tfg --entrypoint "/usr/bin/node" \
-p 3000:3000 cruizba/markdown-to-latex-book server.js
```

Edit the document `document/memory.md`. On save, a new `document/memory.pdf` will be generated.
Enjoy writing your URJC memory end-of-degree project in Latex with Markdown
