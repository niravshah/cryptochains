var config = {
    site_title: "Crypto Chains Wiki",

    site_sections: [
        {
            'title': 'Getting Started',
            'description': 'Structured guides to how you can get started launching your own Crypto Currency',
            'tag': 'getting-started'
        },
        {
            'title': 'Frequently Asked Question',
            'description': 'Answers to some of the most commonly asked questions',
            'tag': 'faq'
        },
        {
            'title': 'Contact Us',
            'description': 'If the knowledge base doesnt answer your doubts, heres how to get in touch',
            'tag': 'contact-us'
        }
    ],

    // Excerpt length (used in search)
    excerpt_length: 400,

//Application base url. While most of the application uses relative paths
    //for routing, this is used for things like SEO which require absolute URLs
    base: "/",

    // Specify the theme to use
    theme_dir: __dirname + "/themes/",
    theme_name: "default",

    // Path in which to store uploads (images etc.)
    uploads_dir: __dirname + "/uploads/",

    // Path in which to store content (markdown files, etc.)
    content_dir: __dirname + "/content/",

    // Path in which to store data (analytics, etc.)
    data_dir: __dirname + "/data/",

    // Path to the static file directory for themes
    public_dir: __dirname + "/themes/default/public/",
    // Optional Lunr locale
    lunr_locale: "",

    // Secret key used to sync two servers
    sync_key: "",

    // Set to true to enable HTTP Basic Authentication
    authentication: true,
    // Set the Authentication mode. Options:
    // - "all" : Requires authentication for all pages
    // - "admin" : Requires authentication for only admin pages (edit / save / etc.).
    //             This allows for a public facing site
    authentication_mode: "admin",
    // If using authentication, set the username and password here.
    credentials: {
        username: "admin",
        password: "admin"
    }
};

// Exports
module.exports = config;