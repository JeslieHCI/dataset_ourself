index = load('data.txt');
frame_indices = cell(10, 2);

subjects_number = 10;
instances_number = 2;

for n_action = 1:subjects_number
    for n_instance = 1:instances_number
        num = ((n_action-1)*2+n_instance-1)*11;
        frame_indices{n_action, n_instance} = index((num+2):(num+11), :);
        frame_indices{n_action, n_instance} = frame_indices{n_action, n_instance};
    end
end

save('frame_indices.mat','frame_indices')
