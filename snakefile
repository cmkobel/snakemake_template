# snakemake --profile profiles/local



rule all:
	input: "path/to/output.txt"


rule generator:
<<<<<<< HEAD
	output: "path/to/output.txt"
	conda: "conda_definitions/mashtree.yaml"
=======
	output: touch("path/to/output.txt")
	conda: "conda_definitions/some_software.yaml"
	# resources: 
	#	mem_mb = 1024,
 	#	runtime = "12:00:00",
>>>>>>> 25e3b4f669588a3fd73053fcb702aa53318eb808
	shell: """
	
		touch {output}
		
	"""
