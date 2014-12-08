name := "scala-play2-coffee-angular-spa-boilerplate"

version := "1.0"

lazy val `scala-play2-coffee-angular-spa-boilerplate` = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.11.1"

libraryDependencies ++= Seq( jdbc , anorm , cache , ws )

unmanagedResourceDirectories in Test <+=  baseDirectory ( _ /"target/web/public/test" )  