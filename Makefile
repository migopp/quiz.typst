TARGET_DIR 	:= .
SRC_DIR 	:= .
SRC_FILES 	:= $(wildcard $(SRC_DIR)/*.typ)
PDF_FILES 	:= $(patsubst $(SRC_DIR)/%.typ,$(TARGET_DIR)/%.pdf,$(SRC_FILES))

all: $(PDF_FILES)

$(TARGET_DIR)/%.pdf: $(SRC_DIR)/%.typ $(TARGET_DIR)
	@mkdir -p $(TARGET_DIR)
	typst compile $< $@

clean:
	rm -rf $(TARGET_DIR)/*.pdf
