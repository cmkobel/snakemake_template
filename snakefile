__author__ = "Carl Mathias Kobel"
__maintainter__ = "https://github.com/cmkobel/snakemake_template"

print("""Description:
    May the data passing through this pipeline
    somehow help to bring just a little more peace
    in this troubled world.
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
 	#	runtime = "12:00:00",
	shell: """
	
		touch {output}
		
	"""






onstart: 
    shell("mkdir -p logs/old/; mv logs/*.log logs/old/ 2> /dev/null") # Put old logs aside
    shell("find output/ > .onstart.txt 2> /dev/null || exit 0")

onsuccess:
    print("onsuccess: The following files were created:")
    shell("find output/ > .onsuccess.txt && diff .onstart.txt .onsuccess.txt || exit 0")

