# snakemake --profile profiles/local



rule all:
	input: "path/to/output.txt"


rule generator:
	output: "path/to/output.txt"
	conda: "conda_definitions/mashtree.yaml"
	# resources: 
	#	mem_mb = 1024,
 	#	runtime = "12:00:00",
	shell: """
	
		touch {output}
		
	"""
