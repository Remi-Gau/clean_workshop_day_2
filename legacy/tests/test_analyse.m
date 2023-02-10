function test_suite = test_analyse %#ok<STOUT>
    % (C) Copyright 2023 Remi Gau
    try % assignment of 'localfunctions' is necessary in Matlab >= 2016
        test_functions = localfunctions(); %#ok<NASGU>
    catch % no problem; early Matlab versions can use initTestSuite fine
    end
    initTestSuite;
end

function test_analyse_smoke()

    data_dir = '/home/remi/Documents/MATLAB/clean_workshop_day_2/legacy/data';
    subject_dir = fullfile(data_dir, 'sub-01');
    cd(subject_dir);

    Analyse;

    assert(exist(fullfile(subject_dir, 'Behavioral', 'Figures.ps'), 'file') == 2);
    assert(exist(fullfile(subject_dir, 'Behavioral', 'Results_PIEMSI_1.mat'), 'file') == 2);

    expected = load(fullfile(subject_dir, 'Behavioral', 'expected_results.mat'));
    results = load(fullfile(subject_dir, 'Behavioral', 'Results_PIEMSI_1.mat'));

    assertEqual(results, expected);

    delete(fullfile(subject_dir, 'Behavioral', 'Figures.ps'));
    delete(fullfile(subject_dir, 'Behavioral', 'Results_PIEMSI_1.mat'));

end
