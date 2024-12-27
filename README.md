Create a Service Principal & Keytab
On your AD DC container (or via samba-tool commands from your host), you’d do something like:

bash
Copy code
# Inside the Samba container or a domain-joined machine:
samba-tool user create tomcat-svc 'StrongP@ssword'
samba-tool spn add HTTP/tomcat-host.example.local tomcat-svc
samba-tool domain exportkeytab /tmp/tomcat-svc.keytab --principal=HTTP/tomcat-host.example.local
You then copy /tmp/tomcat-svc.keytab into your Tomcat container (via volume mount or other means).



