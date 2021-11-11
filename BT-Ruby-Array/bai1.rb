#1
styles= ["jazz","blues"]
#2
styles.push("Rock-n-Roll");
p styles
#3
vitri = (styles.length/2).to_i
p vitri
styles[vitri] = "Classics"
p styles
#4
p styles.shift()
#5
styles.insert(0,"Reggae","Rap")
p styles
