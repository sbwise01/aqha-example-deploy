name "deploy"
description "Example role for aqha-example-web-app which configures application."

run_list(
  "recipe[aqha-example-web-app::default]"
)

default_attributes(
  "aqha" => {
    "deploy_mode" => "DEPLOY"
  }
)
