run("32-bit");
setAutoThreshold("Default dark");
run("NaN Background");
setOption("ScaleConversions", true);
run("16-bit");
run("Clear Results");
setAutoThreshold("Default dark no-reset");
setThreshold(1, 65535, "raw");
run("Analyze Particles...", "display summarize add");
run("Measure", "limit")
roiManager("Deselect");
roiManager("Delete");
Mean=getResult("Mean");
SD=getResult("StdDev");
setThreshold(Mean+(3*SD), 65535, "raw");
run("Clear Results");
run("Analyze Particles...", "size=0.02-0.5 display summarize add");

