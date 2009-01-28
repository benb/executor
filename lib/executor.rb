require "thread"

class ExecutorService
        def initialize(threadcount)
                @finished = false
                @mutex = Mutex.new
                @queue = Queue.new
                @threads = Array[]
                threadcount.times{ @threads << Thread.new{Runner.new(@queue)}}
        end

        def submit(*args,&block)
                if (@finished)
                        raise "Can't submit jobs as pool is closed"
                end
                @queue << [args,block]
        end

        def join
                @threads.each{submit{Thread.exit}}
                @finished=true
                @threads.each{|t| t.join}
        end

        class Runner
                def initialize(queue)
                        puts self.to_s + " init"
                        loop do 
                                args,block = queue.deq
                                block.call(*args)
                        end
                end
        end


end


x = ExecutorService.new(10)
(1..100).each{|i| x.submit(i){|j| puts j}}
x.join
