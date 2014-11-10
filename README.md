#mobile-sensing-web

This is a web site for monitoring mobile phone's sensor data.

# Technology

mobile-sensing-web is built using Java, Spring MVC and Bootstrap.

# Contribute

mobile-sensing-web uses a [Fork and Pull](https://help.github.com/articles/fork-a-repo) model of collaborative development.  Follow this link to learn how to [submit a pull request](https://help.github.com/articles/using-pull-requests).

1. **Point your browser at https://github.com/yyenigun/mobile-sensing-web and click "Fork".**
2. **From shell/prompt:**

```sh
> git clone https://github.com/username/mobile-sensing-web.git
# Clones your fork of the repository into the current directory

> cd mobile-sensing-web
# Changes the active directory to the newly cloned "mobile-sensing-web" directory

> git remote add upstream https://github.com/yyenigun/mobile-sensing-web.git
# Assigns the original repository to a remote called "upstream"

> git fetch upstream
# Pulls in changes not present in your local repository, without modifying your files
```

Testing
--------------
### Run locally

Download and extract [Eclipse Luna](https://www.eclipse.org/downloads/packages/eclipse-ide-java-ee-developers/lunar)

Install gradle plugin to eclipse: (http://marketplace.eclipse.org/content/gradle-integration-eclipse-37-43#.VCAx7fmSzCo)

Click _File->Import->Gradle Project _ and build model

Download and extract Tomcat (minor version: 6)

Add project to Tomcat and start tomcat

To test the project open the link : http://localhost:8080/mobile-sensing-web

Now that you have it running locally you can start to develop and test new functionality and content.

When you have tested your changes, and it is time to merge the changes in to the branch created earlier...

**Commit and push your changes**

```sh
> git commit -a -m "added directory structure for bootstrap-based site [issue 9]"
> git push upstream iss9

```

**Create a Pull Request**


