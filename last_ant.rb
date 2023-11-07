def get_last_moment(n, left, right)
  [(left.max || 0), n - (right.min || n)].max
end