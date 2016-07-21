PAGES = README.md rest.md events.md metrics.md measurements.md
SOURCE_DOC = api-lab.md
TARGET_DOC = api-lab.docx
doc:
	cat $(PAGES) > $(SOURCE_DOC)
	pandoc -f markdown -t docx $(SOURCE_DOC) -o $(TARGET_DOC)

clean:
	$(RM) $(SOURCE_DOC) $(TARGET_DOC)
