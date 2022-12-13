package main

import "github.com/easymesh/autoproxy-web/engin"

func init() {
	engin.SetVersion(VersionGet())
}

func VersionGet() string {
	return "v1.4.0"
}
