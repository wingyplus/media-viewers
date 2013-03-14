if (model.widgets)
{
   for (var i = 0; i < model.widgets.length; i++)
   {
      var widget = model.widgets[i];
      if (widget.id == "WebPreview")
      {
         var conditions = [];
         // Insert new pluginCondition(s) at start of the chain
         conditions.push({
            attributes: {
               mimeType: "application/x-javascript"
            },
            plugins: [{
               name: "Prettify",
               attributes: {}
            }]
         });
         conditions.push({
            attributes: {
               mimeType: "text/css"
            },
            plugins: [{
               name: "Prettify",
               attributes: {
                  lang: "lang-css"
               }
            }]
         });
         conditions.push({
            attributes: {
               mimeType: "text/plain"
            },
            plugins: [{
               name: "Prettify",
               attributes: {
                  lang: "none"
               }
            }]
         });
         var oldConditions = eval("(" + widget.options.pluginConditions + ")");
         // Add the other conditions back in
         for (var j = 0; j < oldConditions.length; j++)
         {
            conditions.push(oldConditions[j]);
         }
         // Override the original conditions
         model.pluginConditions = jsonUtils.toJSONString(conditions);
         widget.options.pluginConditions = model.pluginConditions;
      }
   }
}