Node = Struct.new(:value, :next, :prev) #Debe existir un nodo con su dato, su siguiente y su previo

class List
	attr_accessor :head, :tail #Debe existir una Lista con su cabeza y su cola

        def initialize
            @head = @tail = nil 
        end
        
	#Se puede insertar varios elementos
        def insert_head(value)
            node = Node.new(value)
            
            if @head==nil
                @head = node
            else
                @tail.next = node
            end
            
            @tail=node

        end

        #Se extrae el primer elemento de la lista        
        def extract_head
            aux=""
            if(@head == nil)
                return false
            else
                aux = @head.value
                @head = @head.next
                return aux
            end
        end
        
end


