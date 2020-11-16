# Becoming a Rubyist

### Implicit Returns
  - Methods in Ruby will automatically return the evaluation of their last executed expression. (Except when you do an early return)

    ```
      def get_avg(num1, num_2)
      
    	(num_1 + num_2) / 2
        
      end
    ```
### Omit parentheses for method calls that have no args
  - Simply drop the parentheses when we do not pass arguments
  ``` 
      def say_hi
      puts 'hi'
      end
      
      # Preferred by a Rubyist
      say_hi
   ```
