poetry run umaudemc graph \
  --purge-fails yes --merge-states state --full-matchrew \
  -o out.dot \
  resolution.maude \
  "'p ∨ 'q ∨ 'r, ¬ 'p ∨ 's, ¬ 'q ∨ 's, ¬ 'r ∨ 's, ¬ 's" \
  "proofSearch"

dot -Tsvg out.dot -o out.svg