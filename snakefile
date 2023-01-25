# May the data passing through this pipeline
# somehow help to bring just a little more peace 
# in this troubled world.

print("""Description:
	<Hey there. This pipeline doesn't have a description. Put a few words about what the aim is with this pipeline. Also, consider renaming the parent directory.>
""")
	

#  snakemake --profile profiles/local



rule all:
	input: "path/to/output.txt"


rule generator:
	output: touch("path/to/output.txt")
	conda: "conda_definitions/some_software.yaml"
	# threads: 1
	# resources: 
	#	mem_mb = 1024,
 	#	runtime = "06:00:00",
	shell: """
	
		touch {output}
		
	"""
