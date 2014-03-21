Pritunl
==============

Docker instance for pritunl

This docker image helps you run pritunl. 

Be sure to expose all the ports needed. 

Steps to run Pritunl:
--------------------
1. docker pull lifeeth/pritunl
2. docker run -d -privileged -p 1194:1194/udp -p 1194:1194/tcp -p 9700:9700/tcp lifeeth/pritunl
3. Login to pritunl at http://your_docker_host:9700 with Username: admin Password: admin
4. Add an organization and a user.
5. Add a server and associate it with an organization.
6. Run the server.
7. Profit.
