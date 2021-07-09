#!/usr/bin/env nextflow

/* define the input file to be readin
*/
params.inputfile = "$baseDir/metal_input.txt"
println "Input file provided : ${params.inputfile}"

input_file = file(params.inputfile)

/*
 * Script for Meta-GWAS 
 */
process metaGWAS {

	input:
	file inputfile from input_file


	"""
	metal ${inputfile} metal_ouput
	Rscript create_manhattan.R METAANALYSIS1.TBL
	"""

}
