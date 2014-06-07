#Demonstrates the use of mutexes in Ruby
def inc(n)
  n + 1
end

sum = 0
mutex = Mutex.new
threads = (1..10).map do
  Thread.new do
    10_000.times do
      mutex.synchronize do
        sum = inc(sum) # one thread at a time
      end
    end
  end
end

threads.each(&:join)
p sum
