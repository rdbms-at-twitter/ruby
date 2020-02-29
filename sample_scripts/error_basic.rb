irb(main):001:0> class NoDataError < StandardError; end
=> nil
irb(main):002:0> raise NoDataError, "No Data"
NoDataError: No Data
        from (irb):2
        from /usr/bin/irb:12:in `<main>'
irb(main):003:0> 

# besing .... rescue
#
#ensure for anytime (sucess & failed)
#
