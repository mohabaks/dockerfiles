#------------------------------------------------------------------------------
#                               Resources
#------------------------------------------------------------------------------

resource "docker_image" "altair-graphql" {
  name = "altair-graphql"
  build {
    context = "../altair-graphql"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "burpsuite" {
  name = "burpsuite"
  build {
    context = "../burpsuite"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "caido" {
  name = "caido"
  build {
    context = "../caido"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "firefox" {
  name = "firefox"
  build {
    context = "../firefox"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "amass" {
  name = "amass"
  build {
    context = "../amass"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "ansible" {
  name = "ansible"
  build {
    context = "../ansible"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "asnlookup" {
  name = "asnlookup"
  build {
    context = "../asnlookup"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "aws-cli" {
  name = "aws-cli"
  build {
    context = "../aws-cli"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "brutespray" {
  name = "brutespray"
  build {
    context = "../brutespray"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "certipy" {
  name = "certipy"
  build {
    context = "../certipy"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "clairvoyance" {
  name = "clairvoyance"
  build {
    context = "../clairvoyance"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "cookie-monster" {
  name = "cookie-monster"
  build {
    context = "../cookie-monster"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "crackql" {
  name = "crackql"
  build {
    context = "../crackql"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "dex2jar" {
  name = "dex2jar"
  build {
    context = "../dex2jar"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "domlink" {
  name = "domlink"
  build {
    context = "../domlink"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "evil-winrm" {
  name = "evil-winrm"
  build {
    context = "../evil-winrm"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "eyewitness" {
  name = "eyewitness"
  build {
    context = "../eyewitness"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "feroxbuster" {
  name = "feroxbuster"
  build {
    context = "../feroxbuster"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "ffuf" {
  name = "ffuf"
  build {
    context = "../ffuf"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "gau" {
  name = "gau"
  build {
    context = "../gau"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "gitgot" {
  name = "gitgot"
  build {
    context = "../gitgot"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "githound" {
  name = "githound"
  build {
    context = "../githound"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "github-search" {
  name = "github-search"
  build {
    context = "../github-search"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "gitoops" {
  name = "gitoops"
  build {
    context = "../gitoops"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "goaltdns" {
  name = "goaltdns"
  build {
    context = "../goaltdns"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "gobuster" {
  name = "gobuster"
  build {
    context = "../gobuster"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "gospider" {
  name = "gospider"
  build {
    context = "../gospider"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "graphql-cop" {
  name = "graphql-cop"
  build {
    context = "../graphql-cop"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "graphql-path-enum" {
  name = "graphql-path-enum"
  build {
    context = "../graphql-path-enum"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "graphw00f" {
  name = "graphw00f"
  build {
    context = "../graphw00f"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "hakrawler" {
  name = "hakrawler"
  build {
    context = "../hakrawler"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "httpx" {
  name = "httpx"
  build {
    context = "../httpx"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

# resource "docker_image" "impacket" {
#   name = "impacket"
#   build {
#     context = "../impacket"
#     build_args = {
#       USER : "${var.USER}"
#     }
#     label = {
#       author : "${var.USER}"
#     }
#   }
# }

resource "docker_image" "jadx" {
  name = "jadx"
  build {
    context = "../jadx" 
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "john" {
  name = "john"
  build {
    context = "../john"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "js-beautify" {
  name = "js-beautify"
  build {
    context = "../js-beautify"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "jsluice" {
  name = "jsluice"
  build {
    context = "../jsluice"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "knockpy" {
  name = "knockpy"
  build {
    context = "../knockpy"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "linkfinder" {
  name = "linkfinder"
  build {
    context = "../linkfinder"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "masscan" {
  name = "masscan"
  build {
    context = "../masscan"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}


resource "docker_image" "massdns" {
  name = "massdns"
  build {
    context = "../massdns"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "metabigor" {
  name = "metabigor"
  build {
    context = "../metabigor"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "metasploit" {
  name = "metasploit"
  build {
    context = "../metasploit"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "mobsf" {
  name = "mobsf"
  build {
    context = "../mobsf"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}


resource "docker_image" "naabu" {
  name = "naabu"
  build {
    context = "../naabu"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "nc" {
  name = "nc"
  build {
    context = "../nc"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "netexec" {
  name = "netexec"
  build {
    context = "../netexec"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "nmap" {
  name = "nmap"
  build {
    context = "../nmap"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "nuclei" {
  name = "nuclei"
  build {
    context = "../nuclei"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "openvpn" {
  name = "openvpn"
  build {
    context = "../openvpn"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "pacu" {
  name = "pacu"
  build {
    context = "../pacu"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "paramspider" {
  name = "paramspider"
  build {
    context = "../paramspider"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "ripgen" {
  name = "ripgen"
  build {
    context = "../ripgen"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "shosubgo" {
  name = "shosubgo"
  build {
    context = "../shosubgo"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "shuffledns" {
  name = "shuffledns"
  build {
    context = "../shuffledns"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "smbtools" {
  name = "smbtools"
  build {
    context = "../smbtools"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "sqlmap" {
  name = "sqlmap"
  build {
    context = "../sqlmap"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "subdomainizer" {
  name = "subdomainizer"
  build {
    context = "../subdomainizer"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "subfinder" {
  name = "subfinder"
  build {
    context = "../subfinder"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "subjack" {
  name = "subjack"
  build {
    context = "../subjack"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "sublist3r" {
  name = "sublist3r"
  build {
    context = "../sublist3r"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}


resource "docker_image" "tomnomnom" {
  name = "tomnomnom"
  build {
    context = "../tomnomnom"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "unfurl" {
  name = "unfurl"
  build {
    context = "../unfurl"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "wpscan" {
  name = "wpscan"
  build {
    context = "../wpscan"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}

resource "docker_image" "ysoserial" {
  name = "ysoserial"
  build {
    context = "../ysoserial"
    build_args = {
      USER : "${var.USER}"
    }
    label = {
      author : "${var.USER}"
    }
  }
}