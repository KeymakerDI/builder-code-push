# builder-code-push

builder-code-push Docker image providing maven to build jar file and git-crypt to decrypt files.

The motivation behind the image was to have a ready docker file to push aapplications changes via codepush ensuring that nothing is commited after the push has been done.

Build docker build -t terjohan/builder-code-push .

Usage The image is expected to be run inside a (build) pipeline, which should handle deployment of new application code via codepush.

The entrypoint is set to /bin/sh.

Roadmap Very little is planned for this image! Maintenance:

update version of included tools add other utility tools (typically used in shell scripts) License Apache License, Version 2.0. See the LICENSE file for the full license.

for information about shell script usage, PM me
