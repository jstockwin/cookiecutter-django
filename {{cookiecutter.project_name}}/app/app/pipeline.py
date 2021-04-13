def get_assets_pipeline(is_debug=False):
    """
    Returns the assets files pipeline.

    If is_debug is True, pipeline is not enabled.
    """
    pipeline_enabled = not is_debug

    return {
        "PIPELINE_ENABLED": pipeline_enabled,
        "STYLESHEETS": {
            "styles": {
                "source_filenames": ("styles/styles.scss",),
                "output_filename": "styles.css",
            }
        },
        "JAVASCRIPT": {},
        "COMPILERS": ("pipeline.compilers.sass.SASSCompiler",),
        "SASS_BINARY": "/usr/bin/sass",
    }
