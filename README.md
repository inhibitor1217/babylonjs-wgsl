# babylonjs-wgsl

WGSL shader library for writing custom shader materials or compute shaders for Babylon.js WebGPU engine.

## Usage

### Importing library with WGSL shaders

Use `#include` directive when importing the library.

```wgsl
#include <color>

[[stage(fragment)]]
fn main() -> [[location(0)]] vec4<f32> {
    return COLORS.RED;
}
```

The include statement will be resolved when the shader is loaded and preprocessed. (It will resolve the dependencies and concatenate the shader sources into a single shader file.)

### Loading the shaders into Babylon.js

To load the preprocessed shaders, use `loadWGSLShaders` API before creating the shader materials.

```ts
import { loadWGSLShaders } from "@inhibitor1217/babylonjs-wgsl";

await loadWGSLShaders(
  await import.meta.glob("./material/**/*.wgsl", { as: "raw" })
);
```

This will load the material shader files from each stages. For example:

- `./material/myMaterial.vert.wgsl`
- `./material/myMaterial.frag.wgsl`

these shaders will be loaded to Babylon.js `ShaderStore.ShaderStoreWGSL`.
Then, you can access the shader in `ShaderMaterial` by specifying the material name:

```ts
const myMaterial = new ShaderMaterial(
  "myMaterial",
  scene,
  {
    vertex: "myMaterial",
    fragment: "myMaterial",
  },
  {
    shaderLanguage: ShaderLanguage.WGSL,
    // ...
  }
);
```

This is possible since Babylon.js will look for the shaders in the `ShaderStore.ShaderStoreWGSL` in each pipeline stage, with given shader names.
