# Redmine plugin issue analyze

This is a Redmine plugin to provide a view to analyze the issue situation.
The frontend of this plugin uses Vue.js and Chart.js, so you need to build JavaScript.

## Installation
1. Install plugin
  ```sh
  $ cd $REDMINE_ROOT/plugins
  $ git clone https://github.com/Qhornet/redmine_plugin_issue_analyze.git
  ```

2. Build JavaScripts
  ```sh
  cd $REDMINE_ROOT/plugins/redmine_plugin_issue_analyze/client
  npm install
  npm run build
  ```

3. Restart Redmine

## Compatibility
This plugin version is compatible with Redmine 3.x.