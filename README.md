# Neuron

**Pseudo kod Metody Widrowa-Hoffa uczenia neuronu**

	class Neuron float[] w

		Neuron(n)
			...inicjalizacja n wag...
		end
		/*x=[x1,x2,x3...x12]*/
		feed(x)
			return w1*x1+w2*x2...w12*x12+w0*1
		end

		/*
			x_ucz=[-1 -1 1 -1 -1 1...; 
        	                1 -1 -1 1 1 1 1 1....]
			d_oczek = [-1; 1]
		*/
		learn(ilosc_epok, x_ucz, d_ocze, theta)
			for epoka <= ilosc_epok
				for i=0<wymiar_zb_x_ucz(=2)
					y = feed(x_ucz[i,:])
					e=y-d_ocz[i]
					delta_w = theta*e*x_ucz[i,:]
					this.w = this.w+delta_w			
				end
			end
		end	
	end

	neuron = New Neuron(12)
	x_ucz=[-1 -1 1 -1 -1 1...; 
	 	1 -1 -1 1 1 1 1 1....]
	d_oczek = [-1; 1]
	neuron.learn(500, x_ucz, d_oczek, 0.05)
