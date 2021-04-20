print("P(no birthday match)=365*364*...(365-k+1)/365^k");

k = as.integer(readline(prompt = "Enter a number of people (k): "));
sum = 1;
for (i in 0:(k-1)){
	sum = sum * (365 -i);
	print(paste(i+1, 'is', sum));
}

print(paste("P(no birthday match)", sum / 365^k))
print(paste("P(at least 1 birthday match) = 1-(365*364...(365-k+1))/365^k","=", 1-sum /365^k))
max = 127;
plotX = 0:max;
plotY = c();
plotY2 = c();
for (k in 1:max){
	sum = 1;
	for (i in 0:(k-1)){
		sum = sum * (365 -i);
		print(paste(i+1, 'is', sum));
	}
	plotY[k+1] = sum/365^k;
	plotY2[k+1] = 1-plotY[k+1];
}
plot(plotX,plotY,lines(plotX,plotY2, col="red"));
print("Intution check 23 choose 2 = 253 pairs of people any which could be birthday match.");
# 
#   https://www.datamentor.io/r-programming/plot-function/
#   