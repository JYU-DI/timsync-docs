// Helper: Find previous/next docs relative to the current doc
// Arguments:
//   Hash:
//     - cur_path: String; The path of the current document
//     - docs: Array<Document>; The list of all documents, obtained from `site.docs`

let cur_path = hash.cur_path;
let all_docs = hash.docs;

// Find all docs that are under the docs path
const docs_path_prefix = "docs/";
let docs = [];
for doc in all_docs {
    if !doc.path.starts_with(docs_path_prefix) {
        continue;
    }
    docs.push(doc);
}
// Ensure they are sorted by path
docs.sort(|x, y| if x.path < y.path { -1 } else { 1 });

// Prepare the result object
let result = #{
    prev: (),
    next: (),
};

// Now, find the current doc in the list and log positions
for (doc, index) in docs {
    if doc.path != cur_path {
        continue;
    }

    if (index > 0) {
        result.prev = docs[index - 1];
    }
    if (index < docs.len() - 1) {
        result.next = docs[index + 1];
    }
    break;
}

result