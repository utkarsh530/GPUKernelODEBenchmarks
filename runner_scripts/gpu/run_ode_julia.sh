a=8
max_a=$1
while [ $a -le $max_a ]
do
	# Print the values
	echo $a
	julia --project="./GPU_ODE_Julia/" ./GPU_ODE_Julia/bench_lorenz_gpu.jl $a
	# increment the value
	a=$((a*4))
done