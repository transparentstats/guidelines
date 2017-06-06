Misc design rationale

- Setup chunk should have warnings and messages disabled for concision, and should be named "setup" (for easier use within RMarkdown)

- Boilerplate not necessary for the gist of the code is put in the hidden "boilerplate" chunk

- All chunks should be named

- Exemplars should not be long enough to need localized library loading. Rather, they should include a single chunk where someone can see all the libraries they would need to ensure are installed to run the entire code, so they can install them all at once. We should not encourage random access *within* exemplars, but rather random access *of* exemplars.

- If only a single function or two is needed from a package (or if the package has the bad behavior of clobbering the namespace), use import::from() instead of library() to load the functions needed. Otherwise, with exception for common packages with a large set of functions (e.g., tidyverse), include a comment indicating the functions the library loads in the setup chunk.

- Prefer multiple lines with piping over compact but more difficult to read one-liners when it comes to function composition

- In reporting results, put grapihcal presentation first

- Exemplars should be *exemplars*. Do not give two examples of analysis of the same data if we think one is actually better for that data.

- Output of code should generally have some explanation of it. 
