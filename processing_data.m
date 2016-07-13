clear
clc

for n_action = 1:10
    for n_instance = 1:2
        if n_action ~= 10
            data = load(['joints_s0', num2str(n_action), '_e0', num2str(n_instance), '.txt']);
            data = [data(:, 1:7), data(:,62:64), data(:, 11:61)];
            fid = fopen(['joints_s0', num2str(n_action), '_e0', num2str(n_instance), '.txt'],'wt');
        
            [rows, ~] = size(data);
            for n = 1:rows
                fprintf(fid,'%f ',data(n,:));
               fprintf(fid,'\n');
            end
            fclose(fid);
        else
            data = load(['joints_s', num2str(n_action), '_e0', num2str(n_instance), '.txt']);
            data = [data(:, 1:7), data(:,62:64), data(:, 11:61)];
            fid = fopen(['joints_s', num2str(n_action), '_e0', num2str(n_instance), '.txt'],'wt');
        
            [rows, ~] = size(data);
            for n = 1:rows
                fprintf(fid,'%f ',data(n,:));
               fprintf(fid,'\n');
            end
            fclose(fid);
        end
    end
end

