def min_cost_climbing_stairs(cost)
  path_one = path_two = 0

  cost.each do |current_step_cost|
    next_path = current_step_cost + [path_one, path_two].min
    path_one = path_two
    path_two = next_path
  end

  [path_one, path_two].min
end