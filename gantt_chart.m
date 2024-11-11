

data = [
    1 0 2.7 4  9;
    2 2.7 9.9 6 9 ;
    3 9.9 14.2 4 9;
    4 14.2 17.5 5 6;
    5 17.5 28.2 5 7;
    6 28.2 31 4 10; 
    7 31 43.4 6 8;
    8 43.4 46.6 6 10;
    9 46.6 47.1 5 12;
    10 47.1 47.6 5 12;
];

function create_gantt_chart(data)
    % Extract relevant data
    start_times = data(:, 2);
    end_times = data(:, 3);
    machines = data(:, 4);
    durations = end_times - start_times;
    color_categories = data(:, 5);

    % Define a colormap (you can customize this)
    color_map = [
         0 1 1; % Cyan
    0.5 0 0; % Dark Red
    0 0.5 0; % Dark Green
    0 0 0.5; % Dark Blue
    0.5 0.5 0; % Olive
    0.5 0 0.5; % Purple
    0 0.5 0.5; % 
    1 0 0; % Red
    0 1 0; % Green
    0 0 1; % Blue
    1 1 0; % Yellow
    1 0 1; % Magenta
   
];

    % Create a figure and axes
    figure;
    ax = axes;

    % Plot each task with the specified color and edge color
    for i = 1:size(data, 1)
        rectangle('Position', [start_times(i), machines(i) - 0.5, durations(i), 1], ...
                   'FaceColor', color_map(color_categories(i), :), 'EdgeColor', 'black');
        if i==10
            text(start_times(i) + durations(i)+0.5, machines(i) , num2str(durations(i)), ...
             'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
        elseif i==9
            text(start_times(i) + durations(i)/2-0.75, machines(i) , num2str(durations(i)), ...
             'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
        else
            text(start_times(i) + durations(i)/2, machines(i) , num2str(durations(i)), ...
             'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
        end

    end


    % Create the side visual legend
    legend_x = max(end_times) + 5;  % Adjust the x-position as needed
    legend_y = 1;
    legend_width = 4;
    legend_height = 0.5;
    for i = 1:size(color_map, 1)
        rectangle('Position', [legend_x, legend_y + (i-1)*legend_height, legend_width, legend_height], ...
                   'FaceColor', color_map(i, :), 'EdgeColor', 'black');
        text(legend_x + legend_width, legend_y + (i-1)*legend_height + legend_height/2, ['T' num2str(i)], ...
             'HorizontalAlignment', 'left', 'VerticalAlignment', 'middle');
    end

    % Set axis labels and limits
    xlabel('Time');
    ylabel('Machine');
    xlim([0, max_time]);
    ylim([0, max(machines) + 1]);

    % Customize the plot (optional)
    set(ax, 'YTick', 1:max(machines), 'YTickLabel', num2cell(1:max(machines)));
end






create_gantt_chart(data);