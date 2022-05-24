```
$ docker build -t rwoll/repro .
$ docker run -it --rm rwoll/repro bash -c 'npm ls @playwright/test playwright && npx playwright test'
playwright-repro-14366-unexpected-browsers-missing-conflicting-deps@ /example
+-- @percy/playwright@1.0.3
| `-- playwright@1.22.2
`-- @playwright/test@1.21.1


Running 1 test using 1 worker

  ✘  example.spec.ts:3:1 › example (7ms)


  1) example.spec.ts:3:1 › example =================================================================

    browserType.launch: Executable doesn't exist at /ms-playwright/chromium-1000/chrome-linux/chrome
    ╔═════════════════════════════════════════════════════════════════════════╗
    ║ Looks like Playwright Test or Playwright was just installed or updated. ║
    ║ Please run the following command to download new browsers:              ║
    ║                                                                         ║
    ║     npx playwright install                                              ║
    ║                                                                         ║
    ║ <3 Playwright Team                                                      ║
    ╚═════════════════════════════════════════════════════════════════════════╝





  1 failed
    example.spec.ts:3:1 › example ==================================================================
````

If you add the following to the Dockerfile:

```
PLAYWRIGHT_SKIP_BROWSER_GC=1
```

it works.
