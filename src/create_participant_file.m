function filename = create_participant_file(subject_number, task_name, run_number)
    % (C) Copyright 2023 Remi Gau
    assert(isnumeric(run_number), 'run number should be a number');

    if isnumeric(subject_number)
        subject_number = num2str(subject_number);
    end

    filename = ['sub-' subject_number '_task-' task_name '_run-' num2str(run_number) '.csv'];

    if false
        disp(filename);
    end

end
