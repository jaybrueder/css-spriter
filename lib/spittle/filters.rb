module PNG
  class Image
  FILTERS = {0 => lambda {|value, index, row, last_row| value},
             1 => lambda {|value, index, row, last_row|
              (value + fetch_pixel(index - 3, row)) % 256
            }, 
             2 => lambda {|value, index, row, last_row|
              (value + fetch_pixel(index, last_row)) % 256
            },
             3 => lambda {|value, index, row, last_row| 
              (value + ( (fetch_pixel(index - 3, row) + fetch_pixel(index, last_row)) / 2 ).floor) %256
            },
             4 => lambda {|value, index, row, last_row| 
              a = fetch_pixel(index - 3, row)
              b = fetch_pixel(index, last_row)
              c = fetch_pixel(index - 3, last_row)
              p = a + b - c
              pa = (p - a).abs
              pb = (p - b).abs
              pc = (p - c).abs
          
              pr = c
              if ( pa <= pb and pa <= pc) 
                pr = a
              elsif (pb <= pc)
                pr = b
              end

              (value + pr) % 256
            }}
  end
end