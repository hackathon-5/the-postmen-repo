import play.Project._

name := """petbnb-server"""

version := "1.0-SNAPSHOT"

libraryDependencies ++= Seq(
  javaJdbc,
  javaEbean,
  "org.webjars" %% "webjars-play" % "2.2.2", 
  "org.webjars" % "bootstrap" % "2.3.1",
  "mysql" % "mysql-connector-java" % "5.1.18")

playJavaSettings
