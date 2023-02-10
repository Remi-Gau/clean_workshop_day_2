% (C) Copyright 2023 Remi Gau
test_folder = fullfile(pwd, 'tests');
source_cover =  fullfile(pwd, 'code');

success = moxunit_runtests(test_folder, ...
                           '-verbose', ...
                           '-with_coverage', ...
                           '-cover', source_cover, ...
                           '-cover_html_dir', fullfile(pwd, 'coverage_html'));
