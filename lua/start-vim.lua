vim.g.startify_lists = {
    {type = 'bookmarks', header = {' Bookmarks'}},
    {type = 'files', header = {' Recent files'}},
    {type = 'dir', header = {' Directory '..vim.fn.getcwd()}},
    {type = 'sessions', header = {' Sessions'}}
}

vim.g.startify_bookmarks = {
    {p = 'E:\\Projects'},
    {c = 'C:\\Users\\Faiz\\AppData\\Local\\nvim'},
    'E:\\Projects\\100 Days of Code',
    'E:\\Projects\\Categorized'
}