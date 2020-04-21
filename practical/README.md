# Add Custom js file in Rails 6 app
---
1. Create your custom file named <code>custom.js</code> in <code>app/javascript/packs</code> directory.

For testing purpose, write any <code>console.log</code> in it.

```js
// app/javascript/packs/custom.js

console.log("custom js file loaded")

```
2.  Go to your application.html.erb and add the following line at the end of your <head></head>

```js
<%= javascript_pack_tag 'custom', 'data-turbolinks-track': 'reload' %>
```
3.  Now execute rake assets:precompile This will pack your javascript code (including our custom file we just added)

Now reload your page and you should see the message
```txt
custom js file loaded
```
