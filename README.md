This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

The purpose is to reproduce an exception that is thrown when SaxonJS is used with Next.js.

- See [route.ts](./app/api/render-content/route.ts) for the code that invokes SaxonJS.
- [saxon-js.t.ts](./lib/saxon/saxon-js.t.ts) defines the typescript types for SaxonJS (I unfortunately can't remember where I found this).
- See the [public](./public/) folder for the SEF and XML files used for transformation. The SEF file was generated from [stylesheet.xsl](./public/xsl/stylesheet.xsl), using the [run-xslt3.sh](./run-xslt3.sh) script. That also creates [xslt3-output.html](./public/html/xslt3-output.html) for testing purposes and to ensure that the stylesheet etc. are all correct.

## Starting the Development Server

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

## Invoking the Endpoint

Using your favorite REST client (e.g., Postman), create and send a POST request to:

    http://app.localhost:3000/api/render-content.

Note that I typically create XML documents (e.g., in Office Open XML format). This is not about whether 
or not this endpoint should be returning HTML or XML. This is only about whether or not SaxonJS throws
an exception.
