# OpenSCAD Web GUI

This project uses [`openscad-wasm`](https://github.com/openscad/openscad-wasm) under the hood to
build an editor for OpenSCAD that is capable of loading `.scad` files from other servers.

## Features

- It is capable of rendering OpenSCAD scripts
- You can import scripts by URL
- There are adapters for Printables and Thingiverse. Those platform do not expose the
  links to their files in a way the user can copy the URL to the files. Instead this
  application imports it from the model URL (i.e. https://www.thingiverse.com/thing:1234
  or https://www.printables.com/model/123456-model-name)
- You can import your own libraries or chose from a list of common libraries
- You can add your own fonts or choose from a list of common fonts
- You can export your customized model to STL, OFF, AMF, CSG, DXF and SVG

# Dev

```bash
git clone https://github.com/ThomasHaz/openscad-web-gui
cd openscad-web-gui
./scripts/get-openscad.sh
npm i
npm run dev # Run a webserver and rebuild on file changes
# npm run lint
# npm run test
```

# Credit

This app wouldn't be possible without the work of

- [OpenSCAD](https://openscad.org/)
- [openscad-wasm](https://github.com/openscad/openscad-wasm)
- [openscad-playground](https://github.com/openscad/openscad-playground)
