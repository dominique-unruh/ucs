
module = "ucs"
checkengines={"pdftex"}
checkruns=2

installfiles = {"*.def","*.sty"}

textfiles  = {"*.txt"}
ctanreadme="README.txt"

installfiles  = {"*.sty","*.cls","*.fd","*.def","*.tex","*.enc"}

sourcefiles={
"*.ins","*.dtx",
"*.pl",
"GNUmakefile",
"FAQ","VERSION","README.txt","INSTALL", "LICENSE",
"ltxmacrs.txt","languages.ps.gz",
"config","data","unsupported","utils"
}
flatten=false
flattentds=false



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


