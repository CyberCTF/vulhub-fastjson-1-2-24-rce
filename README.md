# Fastjson 1.2.24 Deserialization RCE

[Vulhub](https://vulhub.org)'s [`fastjson/1.2.24-rce`](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/fastjson/1.2.24-rce) environment, by
phith0n and the Vulhub contributors: a Java application that parses JSON with Fastjson 1.2.24, vulnerable to autoType deserialization. This repository runs it with
[Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machine, and
the machine runs Vulhub's published image `vulhub/fastjson:1.2.24`; the environment folder is vendored in [`app/`](app) and the image's Dockerfile and source in [`base/`](base).

| Machine | Service |
| --- | --- |
| web | the Fastjson 1.2.24 application on port 8090 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:8090/. The exploit needs an RMI or LDAP listener the target can reach, so the lab network keeps its way out. The same spec runs as Docker on a local VM (`docker-vm`), on a
cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: Vulhub's
[README](https://github.com/vulhub/vulhub/tree/8fd63916f7a8711e2e01dda0d27237e4d6175d38/fastjson/1.2.24-rce/README.md) for this environment, with the walkthrough and references.

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

MIT, as Vulhub ([LICENSE](LICENSE)). The vulnerable software inside the image keeps its own licence.
This environment is deliberately vulnerable: keep it isolated.
