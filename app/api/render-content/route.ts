import * as SaxonJS from "saxon-js";

export async function POST() {
  const output = await SaxonJS.transform(
    {
      stylesheetFileName: "./public/sef/stylesheet.sef.json",
      stylesheetBaseURI: "./public/sef/stylesheet.sef.json",
      sourceFileName: "./public/xml/data.xml",
      destination: "serialized",
      outputProperties: { method: "html", indent: false },
    },
    "async"
  );

  return new Response(output.principalResult, {
    headers: { "Content-Type": "application/xml" },
  });
}
