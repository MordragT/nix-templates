import Reveal from 'reveal.js';
import Markdown from 'reveal.js/plugin/markdown/markdown.esm';
import Highlight from 'reveal.js/plugin/highlight/highlight.esm'
import Notes from 'reveal.js/plugin/notes/notes.esm';

Reveal.initialize({
    hash: true,
    transition: "none",
    history: "true",
    plugins: [Markdown, Highlight, Notes],
    navigationMode: "linear",
    slideNumber: 'c/t',
    keyboard: {
        40: "next",
        38: "prev",
    },
});