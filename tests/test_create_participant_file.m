function test_suite = test_create_participant_file %#ok<STOUT>
    % (C) Copyright 2023 Remi Gau
    try % assignment of 'localfunctions' is necessary in Matlab >= 2016
        test_functions = localfunctions(); %#ok<NASGU>
    catch % no problem; early Matlab versions can use initTestSuite fine
    end
    initTestSuite;
end

function Test_Unit_Four
    filename = create_participant_file('02', 'rest', 1);

    expected_output = 'sub-02_task-rest_run-1.csv';
    assert(ischar(filename));
    assert(strcmp(filename, expected_output));
end
