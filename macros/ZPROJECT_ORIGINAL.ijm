
selectImage("minproj");
File.openSequence("/Users/josemorenoperez/LSAMP_Research/2022.06.21 15-30_ColwelliaControl/rangetest/minproj/");

imageCalculator("Subtract create stack", "minproj","Duplicate");
run("Delta F Up");

setAutoThreshold("MaxEntropy dark");

//run("Threshold...");

setOption("BlackBackground", true);
run("Convert to Mask", "method=MaxEntropy background=Dark calculate");

run("Z Code Stack");
selectImage("Depth Coded Stack");

run("Z Project...", "projection=[Max Intensity]");

