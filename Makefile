convert:
	@cd ./yosys-scripts && make

extract:
	@cd ./loop-identification/src && python suffix_tree_extractor.py -f $(BLIF_FILE)
