<h1 align="center"> awsso</h1>

<p align="center">
  <a href="https://github.com/thazelart/awsso/releases" rel="nofollow">
    <img alt="GitHub release (latest SemVer including pre-releases)" src="https://img.shields.io/github/v/release/thazelart/awsso?include_prereleases">
  </a>

  <a href="https://github.com/thazelart/awsso/actions/workflows/release.yaml" rel="nofollow">
    <img src="https://github.com/thazelart/awsso/actions/workflows/release.yaml/badge.svg" alt="goreleaser" style="max-width:100%;">
  </a>

  <a href="https://pkg.go.dev/github.com/thazelart/awsso" rel="nofollow">
    <img src="https://pkg.go.dev/badge/github.com/thazelart/awsso.svg" alt="Go reference" style="max-width:100%;">
  </a>

  <a href="https://github.com/gojp/goreportcard/blob/master/LICENSE" rel="nofollow">
    <img src="https://img.shields.io/badge/license-Apache 2.0-blue.svg" alt="License Apache 2.0" style="max-width:100%;">
  </a>

  <br/>

  <a href="https://codecov.io/gh/thazelart/awsso" >
    <img src="https://codecov.io/gh/thazelart/awsso/branch/main/graph/badge.svg?token=CLP6KW4QLK"/>
  </a>

  <a href="https://github.com/thazelart/awsso/actions/workflows/codeql.yaml" rel="nofollow">
    <img src="https://github.com/thazelart/awsso/actions/workflows/codeql.yaml/badge.svg" alt="codeql" style="max-width:100%;">
  </a>

  <a href="https://goreportcard.com/report/github.com/thazelart/awsso" rel="nofollow">
    <img src="https://goreportcard.com/badge/github.com/thazelart/awsso" alt="Go report card" style="max-width:100%;">
  </a>
</p>
<br/>

An AWS profiles generator for thus using SSO.


## Install

You can install the pre-compiled binary (in several ways), use Docker or compile from source (when on OSS).

Below you can find the steps for each of them.

<details>
  <summary><h3>homebrew tap</h3></summary>

```bash
brew install thazelart/tap/awsso
```

</details>

<details>
  <summary><h3>apt</h3></summary>

```bash
echo 'deb [trusted=yes] https://apt.fury.io/thazelart/ /' | sudo tee /etc/apt/sources.list.d/thazelart.list
sudo apt update
sudo apt install awsso
```

</details>

<details>
  <summary><h3>yum</h3></summary>

```bash
echo '[thazelart]
name=Gemfury thazelart repository
baseurl=https://yum.fury.io/thazelart/
enabled=1
gpgcheck=0' | sudo tee /etc/yum.repos.d/thazelart.repo
sudo yum install goreleaser
```

</details>

<details>
  <summary><h3>deb, rpm and apk packages</h3></summary>
Download the .deb, .rpm or .apk packages from the [release page](https://github.com/thazelart/awsso/releases) and install them with the appropriate tools.
</details>

<details>
  <summary><h3>go install</h3></summary>

```bash
go install github.com/thazelart/awsso@latest
```

</details>

<details>
  <summary><h3>from the GitHub releases</h3></summary>

Download the pre-compiled binaries from the [release page](https://github.com/thazelart/awsso/releases) page and copy them to the desired location.

```bash
$ VERSION=v1.0.0
$ OS=Linux
$ ARCH=x86_64
$ TAR_FILE=awsso_${OS}_${ARCH}.tar.gz
$ wget https://github.com/thazelart/awsso/releases/download/${VERSION}/${TAR_FILE}
$ sudo tar xvf ${TAR_FILE} awsso -C /usr/local/bin
$ rm -f ${TAR_FILE}
```

</details>

<details>
  <summary><h3>manually</h3></summary>

```bash
$ git clone github.com/thazelart/awsso
$ cd awsso
$ go generate ./...
$ go install
```

</details>

## Contribute to this repository

This project adheres to the Contributor Covenant [code of conduct](https://github.com/thazelart/awsso/blob/main/.github/CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. We appreciate your contribution. Please refer to our [contributing](https://github.com/thazelart/awsso/blob/main/.github/CONTRIBUTING.md) guidelines for further information.
