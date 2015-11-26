let empty = ""
let to_string_commit id msg = "====\nCommit " ^ id ^ "\n" ^ msg ^ "\n===="
let repo_exists = "an oasys repository already exists in this directory"
let init_commit = "initial commit"
let repo_initialized = "a new oasys repository has been initialized"
let cannot_find file_name = file_name ^ " did not match any files"
let file_added file_name = file_name ^ " has been added"
let file_reset file_name = file_name ^ " has been reset"
let file_never_committed file_name = file_name ^ " has never been committed"
let file_marked_for_removal file_name = file_name ^ " has been marked for removal"
let file_unchanged file_name = file_name ^ " has neither been added nor marked for removal"
let no_changes = "no files have been added nor marked for removal"
let changes_committed current_branch id message = "Commit " ^ current_branch ^ " " ^ id ^ " was made with message:\n" ^ message
let branch_exists branch_name = branch_name ^ " already exists"
let branch_created branch_name = branch_name ^ " has been created"
let branch_checkout_uncommitted_changes = "cannot checkout a new branch until all changes have been committed"
let branch_checkedout branch_name = branch_name ^ " has been successfully checked out"
let branch_does_not_exist branch_name = branch_name ^ " does not exist"
