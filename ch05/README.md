# Chapter 5 Notes

## Ingress

### host header

In the ingress section, if you don't set up your hosts file with the dns entry, the load balancer won't serve your request.
This is because the host header is required to be set to "kubia.example.com".
You can bypass setting up the hosts entry if you pass the header via curl.

```sh
curl --header "Host: kubia.example.com" {ingress ip}
```

### openssl and MinGW/MSYS on Windows

Couldn't get

```sh
openssl req -new -x509 -key tls.key -out tls.cert -days 360 -subj /CN=kubia.example.com
```

to work, but googling found this [very helpful answer on stack overflow](https://stackoverflow.com/questions/31506158/running-openssl-from-a-bash-script-on-windows-subject-does-not-start-with).  
I needed the extra `/` at the beginning of `//CN=kubia...` because I'm using MinGW/MSYS on windows to run bash.

```sh
openssl req -new -x509 -key tls.key -out tls.cert -days 360 -subj //CN=kubia.example.com
```
