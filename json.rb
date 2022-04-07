my_string = "{\"_class\":\"hudson.model.Queue\",\"discoverableItems\":[],\"items\":[{\"_class\":\"hudson.model.Queue$WaitingItem\",
\"actions\":[{\"_class\":\"hudson.model.CauseAction\",\"causes\":[{\"_class\":\"com.cloudbees.jenkins.GitHubPushCause\",
\"shortDescription\":\"Started by GitHub push by emily\"},{\"_class\":\"com.cloudbees.jenkins.GitHubPushCause\",
\"shortDescription\":\"Started by GitHub push by emily\"}]}],\"blocked\":false,\"buildable\":false,\"id\":1196408,
\"inQueueSince\":1631207098619,\"params\":\"\",\"stuck\":false,\"task\":{\"_class\":\"org.jenkinsci.plugins.workflow.job.WorkflowJob\",
\"name\":\"speckel_master\",\"url\":\"https://build.mightystate.com/job/speckel_master/\",\"color\":\"yellow_anime\"},
\"url\":\"queue/item/1196408/\",\"why\":\"In the quiet period. Expires in 1 hr 12 min\",\"timestamp\":1631212498619}]}"

my_string.parse(:json)