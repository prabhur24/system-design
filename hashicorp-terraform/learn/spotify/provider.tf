terraform {
  required_providers {
    spotify = {
      source  = "conradludgate/spotify"
      version = "~> 0.1.0"
    }
  }
}

provider "spotify" {
  client_id     = "test"
  client_secret = "test"
  redirect_uri  = "prabhurajendran.in"
}

