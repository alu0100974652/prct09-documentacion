Node = Struct.new(:value, :next, :prev) #Debe existir un nodo con su dato, su siguiente y su previo

class List
	attr_accessor :head, :nodo_actual,:tail #Debe existir una Lista con su cabeza y su cola

        def initialize(head,tail)
          	@head = nil
		@tail = nil
        end
        
	#Se puede insertar un elemento por la cabeza
        def insert(x)
		node = Node.new(x,nil,nil)
		
		if @head==nil and @tail==nil
			node.prev=@tail
			node.next=@head
			@nodo_actual=node
			@head=node
			@tail=node
		else
			node.prev=@head
			node.next=nil
			@nodo_actual=node
			@head.next=node
		end
        end

	def extract_head()
		@tail=@tail.next
	end

	def extract_tail()
		@head=@head.next
	end

	def insert_elements(nodos)
		
		i=0
		while i < nodos.length do 
			insert(nodos[i])
			i+=1
		end

	end
end
