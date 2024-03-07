import { $ } from 'zx';

await $`tsp compile src`;
await $`rm -rf build`;
await $`mkdir build`;
await $`cp favicon.svg build`;
await $`cp index.html build`;
await $`cp -r tsp-output build`;
