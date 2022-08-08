
module = "ucs"
checkengines={"pdftex"}
checkruns=2

installfiles = {"*.def","*.sty"}



mybundleunpack=bundleunpack
function bundleunpack(sources, sourcedirs)
  mkdir("build")
  mkdir("build/local")
  cp("UnicodeData.txt",string.match(kpse.lookup("UnicodeData.txt"),"(.*[/])"),".")
  mkdir("data")
  runcmd("perl -w makeunidef.pl --nocomments --targetdir=data config/*.ucf")
  rm(".","UnicodeData.txt")
  return mybundleunpack(sources, sourcedirs)
end


