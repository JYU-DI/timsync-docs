// Helper to get all documents from the /docs path
// Arguments:
//   Hash:
//     - docs: Array<Document>; The list of all documents, obtained from `site.docs`

let all_docs = hash.docs;

const docs_path_prefix = "docs/";
let docs = [];
for doc in all_docs {
    if !doc.path.starts_with(docs_path_prefix) {
        continue;
    }
    docs.push(doc);
}
docs.sort(|x, y| if x.path < y.path { -1 } else { 1 });

docs