/*jslint node: true */

'use strict';

var rlv = require('readline-vim'),
    repl = require('repl');

var r = repl.start({
    prompt: ">> ",
    input: process.stdin,
    output: process.stdout
});

var vim = rlv(r.rli),
    map = vim.map;

/*
 * Mappings:
 *
 * It is important to note the following actions are present by default:
 *  - [esc] by default switches to normal mode
 *  - [ctrl-p] and [ctrl-n] navigate the history in insert mode
 *  - [j] and [k] navigate the history in normal mode
 *
 * The below mappings add other ways to invoke the same actions
 */

// [insert mode] allow switching to normal mode by typing 'jk' quickly 
map.insert('jk', 'esc');

// [insert mode] go backward in history via 'ctrl-k' 
map.insert('ctrl-k', 'ctrl-p');

// [insert mode] go backward in history via 'ctrl-k' 
// (forward via 'ctrl-j' doesn't work since it is interpreted as 'enter')
map.insert('ctrl-space', 'ctrl-n');

// [normal mode] go backward in history via space bar
map.normal('space', 'k');

// [normal mode] go forward in history via space bar when ctrl is pressed 
// (shift wouldn't work with space since nodejs readline checks for uppercase)
map.normal('ctrl-space', 'j');

//console.log('The following mappings have been added:\n %s',
    //require('util').inspect(map.mappings, false, 5, true));

//console.log('\nConsult the comments inside examples/repl.js for more details.\n');

r.displayPrompt();
