Node = Struct.new(:value, :next, :prev) #Debe existir un nodo con su dato, su siguiente y su previo

class List
	attr_accessor :head, :nodo_actual,:tail #Debe existir una Lista con su cabeza y su cola

        def initialize(head,tail)
          	@head = nil
		@tail = nil
        end
        
	#Se puede insertar un elemento por la cabeza
        def insert(value)
		node = Node.new(value,nil)
		if (@head == nil)
			@head = node
		else
			@tail.next = node
			node.prev = @tail
		end

		@tail=node
        end

	def extract_head
            aux=""
            if (@head == nil)
                return false
            else
                aux = @head.value
                @head = @head.next
                return aux
            end
        end        
  
  	def extract_tail
            aux=""
            if(@tail == nil)
                return false
            else
                aux = @tail.value
                @tail = @tail.prev
                return aux
            end
        end
end
