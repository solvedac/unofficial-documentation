import { $ } from 'zx';

await $`tsp compile src`;
await $`rm -rf build`;
await $`mkdir build`;
await $`cp favicon.svg build`;
await $`cp index.html build`;
await $`cp -r tsp-output build`;
await $`cp -r vendors build`;
await $`cp -r assets build`;

if ((await $`git branch --show-current`) != 'main') {
  const { number } = JSON.parse(await $`gh pr view --json number`.quiet());
  const hash = (await $`git rev-parse --short HEAD`.quiet()).toString().trim();
  const version = `${hash} at #${number}`;

  $.quote = (s) => s;
  await $`sed -E "s/version:.+/version: \\"${version}\\"/" -i "build/tsp-output/@typespec/openapi3/openapi.yaml"`;
}
