#       Copyright 2017 IBM Corp All Rights Reserved

#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at

#       http://www.apache.org/licenses/LICENSE-2.0

#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

FROM websphere-liberty:microProfile
COPY server.xml /config/server.xml
COPY target/stockquote-1.0-SNAPSHOT.war /config/apps/StockQuote.war
COPY target/liberty/wlp/usr/servers/defaultServer/dropins/javametrics-prometheus.war /config/dropins/javametrics-prometheus.war
COPY target/liberty/wlp/usr/servers/defaultServer/resources/javametrics-agent.jar /config/resources/javametrics-agent.jar
COPY target/liberty/wlp/usr/servers/defaultServer/resources/asm /config/resources/asm
COPY target/liberty/wlp/usr/servers/defaultServer/dropins/javametrics-rest.war /config/dropins/javametrics-rest.war
COPY target/liberty/wlp/usr/servers/defaultServer/dropins/javametrics-dash.war /config/dropins/javametrics-dash.war
COPY src/main/liberty/config/jvmbx.options  /config/jvm.options
