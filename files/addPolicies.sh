curl -k \
  -u $TL_USER:$TL_PASS \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '{"_id":"containerRuntime","rules":[{"modified":"2021-01-07T12:41:35.473Z","owner":"srohatyn_paloaltonetworks_com","name":"Demo_Rule_Runtime","previousName":"Demo_Rule_Runtime","collections":[{"hosts":["*"],"images":["10.96.172.47:5000/evilpetclinic:1.2","10.96.172.47:5000/evilpetclinic:*","*evilpetclinic*","*evilpetclinic:1.2","10.96.172.47:5000/evilpetclinic:latest"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"srohatyn_paloaltonetworks_com","modified":"2021-01-07T12:25:21.683Z","color":"#D24D7A","system":false}],"advancedProtection":true,"processes":{"effect":"alert","blacklist":[],"whitelist":[],"checkCryptoMiners":true,"checkLateralMovement":true},"network":{"effect":"alert","blacklistIPs":[],"blacklistListeningPorts":[],"whitelistListeningPorts":[],"blacklistOutboundPorts":[],"whitelistOutboundPorts":[],"whitelistIPs":[],"skipModifiedProc":false,"detectPortScan":true,"skipRawSockets":false},"dns":{"effect":"alert","whitelist":[],"blacklist":[]},"filesystem":{"effect":"alert","blacklist":[],"whitelist":[],"checkNewFiles":true,"backdoorFiles":true},"kubernetesEnforcement":false,"cloudMetadataEnforcement":false,"customRules":[]},{"modified":"2020-12-31T16:25:36.271Z","owner":"srohatyn_paloaltonetworks_com","name":"demo_build - Ignore Infra","previousName":"","notes":"demo_build - Ignore Infra","collections":[{"hosts":["*"],"images":["*gogs*","*jenkins*","*maildev*","*nexus3*","*openldap*","*postgres*","*selenium*","*splunk*","*twistlock/defender*","*twistlock/console*"],"labels":["*"],"containers":["*"],"namespaces":["*"],"accountIDs":["*"],"clusters":["*"],"name":"Infrastructure-Components","owner":"srohatyn_paloaltonetworks_com","modified":"2020-12-31T16:25:12.038Z","color":"#708115","description":"Infrastructure Components","system":false}],"advancedProtection":false,"processes":{"effect":"disable","blacklist":[],"whitelist":[],"checkCryptoMiners":true,"checkLateralMovement":true},"network":{"effect":"disable","blacklistIPs":[],"blacklistListeningPorts":[],"whitelistListeningPorts":[],"blacklistOutboundPorts":[],"whitelistOutboundPorts":[],"whitelistIPs":[],"skipModifiedProc":false,"detectPortScan":true,"skipRawSockets":false},"dns":{"effect":"disable","whitelist":[],"blacklist":[]},"filesystem":{"effect":"disable","blacklist":[],"whitelist":[],"checkNewFiles":true,"backdoorFiles":true},"kubernetesEnforcement":false,"cloudMetadataEnforcement":false},{"modified":"2020-12-31T16:25:35.921Z","owner":"srohatyn_paloaltonetworks_com","name":"Default - alert on suspicious runtime behavior","previousName":"","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2020-12-31T16:08:11.394Z","color":"#3FA2F7","description":"System - all resources collection","system":true}],"advancedProtection":true,"processes":{"effect":"alert","blacklist":[],"whitelist":[],"checkCryptoMiners":true,"checkLateralMovement":true,"checkParentChild":true},"network":{"effect":"alert","blacklistIPs":[],"blacklistListeningPorts":[],"whitelistListeningPorts":[],"blacklistOutboundPorts":[],"whitelistOutboundPorts":[],"whitelistIPs":[],"skipModifiedProc":false,"detectPortScan":true,"skipRawSockets":false},"dns":{"effect":"alert","whitelist":[],"blacklist":[]},"filesystem":{"effect":"alert","blacklist":[],"whitelist":[],"checkNewFiles":true,"backdoorFiles":true},"kubernetesEnforcement":true,"cloudMetadataEnforcement":true,"customRules":[{"_id":26,"action":"audit","effect":"alert"},{"_id":23,"action":"audit","effect":"alert"},{"_id":19,"action":"audit","effect":"alert"}]}],"learningDisabled":false}' \
  https://console-master-v20-12.srohatyn.demo.twistlock.com/api/v1/policies/runtime/container


status=$?

if [ $status -eq 0 ]
then
  echo "Successfully installed Runtime policies, among which Demo_Rule"
else
  echo "Runtime policy install failed, $status"
fi


curl -k \
  -u $TL_USER:$TL_PASS \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '{"rules":[{"modified":"2021-01-07T12:41:00.447Z","owner":"srohatyn_paloaltonetworks_com","name":"Demo_Vuln_Rule","previousName":"Demo_Vuln_Rule","effect":"alert","collections":[{"hosts":["*"],"images":["10.96.172.47:5000/evilpetclinic:1.2","10.96.172.47:5000/evilpetclinic:*","*evilpetclinic*","*evilpetclinic:1.2","10.96.172.47:5000/evilpetclinic:latest"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"srohatyn_paloaltonetworks_com","modified":"2021-01-07T12:25:21.683Z","color":"#D24D7A","system":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"group":["*"],"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":false,"value":0},"graceDays":0,"verbose":false,"allCompliance":false,"onlyFixed":false,"cveRules":[],"tags":[]},{"modified":"2020-12-31T16:25:29.357Z","owner":"srohatyn_paloaltonetworks_com","name":"ATO-FrontEnd","previousName":"","disabled":true,"effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["ato:ATO-FrontEnd"],"containers":["*"],"accountIDs":["*"],"name":"ATO-FrontEnd","owner":"srohatyn_paloaltonetworks_com","modified":"2020-12-31T16:25:12.455Z","color":"#187752","description":"ATO for all containers accessed through the NGINX ingress controller","system":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"group":["*"],"alertThreshold":{"disabled":false,"value":1},"blockThreshold":{"enabled":true,"value":1},"onlyFixed":true,"tags":[{"effect":"ignore","name":"ATO-FrontEnd-Mitigating_Controls","description":"Ignore mitigating controls for 1 yr","expiration":{"enabled":true,"date":"2021-07-02T05:00:00Z"}},{"effect":"ignore","name":"ATO-FrontEnd-POAM","description":"Ignore POAMed vulnerabilities for 6 months","expiration":{"enabled":true,"date":"2021-01-02T06:00:00Z"}}],"graceDays":0},{"modified":"2020-12-31T16:25:29.357Z","owner":"srohatyn_paloaltonetworks_com","name":"demo_build - Product Sock Shop","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"namespaces":["sock-shop"],"accountIDs":["*"],"name":"Sock-Shop","owner":"srohatyn_paloaltonetworks_com","modified":"2020-12-31T16:25:12.565Z","color":"#857552","description":"Sock-Shop Namespace","system":false}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"group":["*"],"alertThreshold":{"disabled":false,"value":4},"blockThreshold":{"enabled":false,"value":0},"onlyFixed":true,"graceDays":0},{"modified":"2020-12-31T16:25:29.357Z","owner":"system","name":"Default - ignore Twistlock components","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*twistlock*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"Prisma Cloud resources","owner":"system","modified":"2020-12-31T16:08:11.394Z","color":"#021745","description":"System - Prisma Cloud images and containers collection","system":true}],"action":["*"],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"group":["*"],"alertThreshold":{"disabled":false,"value":4},"blockThreshold":{"enabled":false,"value":0},"onlyFixed":true,"graceDays":0},{"modified":"2020-12-31T16:25:29.357Z","owner":"system","name":"Default - alert all components","previousName":"","effect":"alert","collections":[{"hosts":["*"],"images":["*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"All","owner":"system","modified":"2020-12-31T16:08:11.394Z","color":"#3FA2F7","description":"System - all resources collection","system":true}],"condition":{"readonly":false,"device":"","vulnerabilities":[]},"alertThreshold":{"disabled":false,"value":0},"blockThreshold":{"enabled":false,"value":0},"graceDays":0}],"policyType":"containerVulnerability","_id":"containerVulnerability","type":"vulnerability","policyContext":"images"}' \
  https://console-master-v20-12.srohatyn.demo.twistlock.com/api/v1/policies/vulnerability/images

status=$?

if [ $status -eq 0 ]
then
  echo "Successfully installed image vulnerability policies, among which Demo_Vuln_Rule"
else
  echo "Vulnerability policy install failed, $status"
fi


curl -k \
  -u $TL_USER:$TL_PASS \
  -H 'Content-Type: application/json' \
  -X PUT \
  -d '{"_id":"containerAppFirewall","rules":[{"modified":"2021-01-07T14:13:38.215Z","owner":"srohatyn_paloaltonetworks_com","name":"Demo_WAAS_Rule","previousName":"","collections":[{"hosts":["*"],"images":["10.96.172.47:5000/evilpetclinic:1.2","10.96.172.47:5000/evilpetclinic:*","*evilpetclinic*","*evilpetclinic:1.2","10.96.172.47:5000/evilpetclinic:latest"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"evilpetclinic","owner":"srohatyn_paloaltonetworks_com","modified":"2021-01-07T12:25:21.683Z","color":"#D24D7A","system":false}],"applicationsSpec":[{"sessionCookieEnabled":false,"sessionCookieBan":false,"banDurationMinutes":5,"certificate":{},"dosConfig":{"effect":"alert","trackSession":false,"burstRate":2,"averageRate":1,"matchConditions":[]},"apiSpec":{"endpoints":[{"host":"*","basePath":"*","exposedPort":0,"internalPort":80,"tls":false,"http2":false}],"effect":"disable","fallbackEffect":"disable","paths":[]},"botProtectionSpec":{"userDefinedBots":[],"knownBotProtectionsSpec":{"searchEngineCrawlers":"alert","businessAnalytics":"alert","educational":"alert","news":"alert","financial":"alert","contentFeedClients":"alert","archiving":"alert","careerSearch":"alert","mediaSearch":"alert"},"unknownBotProtectionSpec":{"generic":"disable","webAutomationTools":"disable","webScrapers":"disable","apiLibraries":"disable","httpLibraries":"disable","botImpersonation":"disable","browserImpersonation":"disable","requestAnomalies":{"threshold":9,"effect":"disable"}},"sessionValidation":"disable","interstitialPage":false,"jsInjectionSpec":{"enabled":false,"timeoutEffect":"disable"}},"networkControls":{"advancedProtectionEffect":"prevent","deniedSubnetsEffect":"alert","deniedCountriesEffect":"alert","allowedCountriesEffect":"alert"},"body":{"inspectionSizeBytes":131072},"intelGathering":{"infoLeakageEffect":"prevent","removeFingerprintsEnabled":true},"maliciousUpload":{"effect":"disable","allowedFileTypes":[],"allowedExtensions":[]},"csrfEnabled":true,"clickjackingEnabled":true,"sqli":{"effect":"prevent","exceptionFields":[]},"xss":{"effect":"prevent","exceptionFields":[]},"attackTools":{"effect":"prevent","exceptionFields":[]},"shellshock":{"effect":"prevent","exceptionFields":[]},"malformedReq":{"effect":"prevent","exceptionFields":[]},"cmdi":{"effect":"prevent","exceptionFields":[]},"lfi":{"effect":"prevent","exceptionFields":[]},"codeInjection":{"effect":"prevent","exceptionFields":[]},"remoteHostForwarding":{},"headerSpecs":[]}],"expandDetails":true},{"modified":"2020-12-31T16:30:53.346Z","owner":"srohatyn_paloaltonetworks_com","name":"httpd","previousName":"","collections":[{"hosts":["*"],"images":["*httpd*"],"labels":["*"],"containers":["*"],"functions":["*"],"namespaces":["*"],"appIDs":["*"],"accountIDs":["*"],"codeRepos":["*"],"clusters":["*"],"name":"httpd","owner":"srohatyn_paloaltonetworks_com","modified":"2020-12-31T16:30:26.459Z","color":"#3F7EFD","system":false}],"applicationsSpec":[{"sessionCookieEnabled":true,"sessionCookieBan":true,"banDurationMinutes":5,"certificate":{"encrypted":""},"dosConfig":{"effect":"alert","trackSession":true,"burstRate":1,"averageRate":1},"apiSpec":{"endpoints":[{"host":"*","basePath":"*","exposedPort":0,"internalPort":80,"tls":false,"http2":false}],"effect":"disable","fallbackEffect":"disable"},"botProtectionSpec":{"userDefinedBots":[],"knownBotProtectionsSpec":{"searchEngineCrawlers":"disable","businessAnalytics":"disable","educational":"disable","news":"disable","financial":"disable","contentFeedClients":"disable","archiving":"disable","careerSearch":"disable","mediaSearch":"disable"},"unknownBotProtectionSpec":{"generic":"disable","webAutomationTools":"disable","webScrapers":"disable","apiLibraries":"disable","httpLibraries":"disable","botImpersonation":"disable","browserImpersonation":"disable","requestAnomalies":{"threshold":9,"effect":"disable"}},"sessionValidation":"disable","interstitialPage":true,"jsInjectionSpec":{"enabled":false,"timeoutEffect":"disable"}},"networkControls":{"advancedProtectionEffect":"alert","deniedSubnetsEffect":"alert","deniedCountriesEffect":"alert","allowedCountriesEffect":"alert"},"body":{"inspectionSizeBytes":131072},"intelGathering":{"infoLeakageEffect":"disable","removeFingerprintsEnabled":true},"maliciousUpload":{"effect":"disable","allowedFileTypes":[],"allowedExtensions":[]},"csrfEnabled":true,"clickjackingEnabled":true,"sqli":{"effect":"alert","exceptionFields":[]},"xss":{"effect":"alert","exceptionFields":[]},"attackTools":{"effect":"alert","exceptionFields":[]},"shellshock":{"effect":"alert","exceptionFields":[]},"malformedReq":{"effect":"alert","exceptionFields":[]},"cmdi":{"effect":"alert","exceptionFields":[]},"lfi":{"effect":"alert","exceptionFields":[]},"codeInjection":{"effect":"alert","exceptionFields":[]},"remoteHostForwarding":{}}]},{"modified":"2020-12-31T16:29:44.403Z","owner":"srohatyn_paloaltonetworks_com","name":"demo_build - DVWA","previousName":"","collections":[{"hosts":["*"],"images":["vulnerables/web-dvwa:latest"],"labels":["*"],"containers":["*"],"namespaces":["*"],"accountIDs":["*"],"clusters":["*"],"name":"DVWA","owner":"srohatyn_paloaltonetworks_com","modified":"2020-12-31T16:25:12.397Z","color":"#53a86b","description":"DVWA for WAAS Demo","system":false}],"applicationsSpec":[{"sessionCookieEnabled":true,"sessionCookieBan":true,"banDurationMinutes":5,"certificate":{"encrypted":""},"dosConfig":{"effect":"alert","trackSession":true,"burstRate":1,"averageRate":1},"apiSpec":{"description":"DVWA","endpoints":[{"host":"*","basePath":"*","exposedPort":0,"internalPort":80,"tls":false,"http2":false}],"effect":"disable","fallbackEffect":"disable"},"botProtectionSpec":{"userDefinedBots":[],"knownBotProtectionsSpec":{"searchEngineCrawlers":"alert","businessAnalytics":"alert","educational":"alert","news":"alert","financial":"alert","contentFeedClients":"alert","archiving":"alert","careerSearch":"alert","mediaSearch":"alert"},"unknownBotProtectionSpec":{"generic":"alert","webAutomationTools":"alert","webScrapers":"alert","apiLibraries":"alert","httpLibraries":"alert","botImpersonation":"alert","browserImpersonation":"alert","requestAnomalies":{"threshold":9,"effect":"alert"}},"sessionValidation":"disable","interstitialPage":true,"jsInjectionSpec":{"enabled":false,"timeoutEffect":"disable"}},"networkControls":{"advancedProtectionEffect":"alert","deniedSubnetsEffect":"alert","deniedCountriesEffect":"alert","allowedCountriesEffect":"alert"},"body":{"inspectionSizeBytes":131072},"intelGathering":{"infoLeakageEffect":"disable","removeFingerprintsEnabled":true},"maliciousUpload":{"effect":"disable","allowedFileTypes":[],"allowedExtensions":[]},"csrfEnabled":true,"clickjackingEnabled":true,"sqli":{"effect":"alert","exceptionFields":[]},"xss":{"effect":"alert","exceptionFields":[]},"attackTools":{"effect":"alert","exceptionFields":[]},"shellshock":{"effect":"alert","exceptionFields":[]},"malformedReq":{"effect":"alert","exceptionFields":[]},"cmdi":{"effect":"alert","exceptionFields":[]},"lfi":{"effect":"alert","exceptionFields":[]},"codeInjection":{"effect":"alert","exceptionFields":[]},"remoteHostForwarding":{}}]}],"minPort":30000,"maxPort":31000}' \
  https://console-master-v20-12.srohatyn.demo.twistlock.com/api/v1/policies/firewall/app/container

status=$?

if [ $status -eq 0 ]
then
  echo "Successfully installed container WAAS policies, among which Demo_WAAS_Rule"
else
  echo "Container WAAS policy install failed, $status"
fi