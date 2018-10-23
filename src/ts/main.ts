import { Elm } from "./elm";

let p = document.createElement("p");
p.textContent = "Hello TypeScript";
document.body.appendChild(p);

let elmDiv = document.createElement("div");
document.body.appendChild(elmDiv);
Elm.Main.init({ node: elmDiv });
