import { $ } from 'zx';

await $`tsp compile src`;
await $`rm -rf build`;
await $`mkdir build`;
await $`mkdir build/unofficial-documentation`;
await $`cp favicon.svg build/unofficial-documentation`;
await $`cp index.html build/unofficial-documentation`;
await $`cp -r tsp-output build/unofficial-documentation`;
await $`cp -r vendors build/unofficial-documentation`;
await $`cp -r assets build/unofficial-documentation`;
await $`echo '<meta http-equiv="refresh" content="0; url=/unofficial-documentation" />' >build/index.html`;

const branch = await $`git branch --show-current`.quiet();
if (branch.stdout.trim() != 'main') {
  const hash = (await $`git rev-parse --short HEAD`.quiet()).toString().trim();
  const version = `${hash}`;

  $.quote = (s) => s;
  await $`sed -E "s/version:.+/version: \\"${version}\\"/" -i "build/unofficial-documentation/tsp-output/@typespec/openapi3/openapi.yaml"`;
}
