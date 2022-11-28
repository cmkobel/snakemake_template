# snakemake --profile profiles/local



rule all:
	input: "/path/to/output.txt"


rule generator:
	output: "/path/to/output.txt"
	conda: "conda_definitions/mashtree.yaml"
	shell: """
	
		touch {output}
		
	"""
