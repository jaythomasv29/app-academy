def countdown(num)
  if num == 0
    p num
    puts "BLAST AWAY!!! Ready for lift off"
    return
  end
  p num
  countdown(num - 1)
end

countdown(10)
