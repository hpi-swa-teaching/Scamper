font installation
uninstallFonts
	{'NimbusMonoL' . 'TrebuchetMS' . 'Webdings' . 'Georgia' . 'Verdana' . 'AndaleMono' . 'NimbusRomanNo9L' . 'NimbusSansL' . 'ComicSansMS' . 'URWChanceryL'}
		do: [:font | TTCFont removeStyleName: font].
	numberOfInstalledFonts := 0.