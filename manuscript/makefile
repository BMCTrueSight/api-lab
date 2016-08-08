PAGES = overview.md rest.md events.md metrics.md measurements.md
TARGET = api-lab
SOURCE_DOC = $(TARGET).md
TARGET_DOC = $(TARGET).docx
TARGET_LATEX = $(TARGET).latex
TARGET_PDF = $(TARGET).pdf

doc: $(SOURCE_DOC)
	pandoc -f markdown -t docx $(SOURCE_DOC) -o $(TARGET_DOC)

$(SOURCE_DOC): $(PAGES)
	cat $(PAGES) > $(SOURCE_DOC)

pdf: $(SOURCE_DOC)
	pandoc -f markdown -t latex -o $(TARGET_PDF) $(SOURCE_DOC)

latex: $(SOURCE_DOC)
	pandoc -f markdown -t latex -o $(TARGET_LATEX) $(SOURCE_DOC)

clean:
	$(RM) $(SOURCE_DOC) $(TARGET_DOC) $(TARGET_LATEX)
