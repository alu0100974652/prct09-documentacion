Node = Struct.new(:value, :next, :prev) #Debe existir un nodo con su dato, su siguiente y su previo

class List
	attr_accessor :head, :tail #Debe existir una Lista con su cabeza y su cola

        def initialize
            @head = @tail = nil 
        end
        
	#SE PUEDE INSERTAR UN ELEMENTO Y VARIOS ELEMENTOS
        def add(value)
            node = Node.new(value,nil)
            
            if @head==nil
                @head = node
            else
                @tail.next = node
            end
            
            @tail=node

        end
        #SE EXTRAE EL PRIMER ELEMENTO DE LA LISTA
        
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
        
        def empty
            if  @head = @tail = nil 
                return true
            else
                return false
            end
        end
        
        def to_s
            @aux=head
            out=""
            while @aux != nil do
                dieta=Dieta.new(@aux.value[0],@aux.value[1])
                raciones=Raciones.new(@aux.value[2],@aux.value[3],@aux.value[4],@aux.value[5],@aux.value[6])
                out<<"\n#{dieta.m_nombre()}\n"
                out<<"#{raciones.comidayprop()}\n"
                out<<"#{raciones.vct()}\n"
                @aux=@aux.next()
            end
            "#{out}"
        end
        
    end
