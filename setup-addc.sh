# Inside the Samba container or a domain-joined machine:
samba-tool user create tomcat-svc 'StrongP@ssword'
samba-tool spn add HTTP/tomcat-host.example.local tomcat-svc
samba-tool domain exportkeytab /tmp/tomcat-svc.keytab --principal=HTTP/tomcat-host.example.local
