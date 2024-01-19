.phony: assemble
TMPDIR = build
OUTDIR = out

BASENAME = $(notdir $(basename $@))

%: $(OUTDIR)/%

$(OUTDIR)/%: $(TMPDIR)/%.o $(OUTDIR)
	gcc -o $(OUTDIR)/$(BASENAME) -nostdlib -static $(TMPDIR)/$(BASENAME).o

$(TMPDIR)/%.o: %.s $(TMPDIR)
	as -o $(TMPDIR)/$(BASENAME).o $(BASENAME).s

$(OUTDIR) $(TMPDIR):
	mkdir $@
