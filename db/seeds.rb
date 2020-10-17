phil = User.create(username: "Dr. Phil", password: "pw", uid: "abc123")
dre = User.create(username: "Dr. Dre", password: "pw", uid: "def456")
mike = User.create(username: "Dr. Mike", password: "pw", uid:"ghi789")
house = User.create(username: "Dr. House", password: "pw", uid:"jkl012")
doom = User.create(username: "Dr. Doom", password: "pw", uid:"mno345")

ny = Office.create(state: "New York", city: "NYC")
nj = Office.create(state: "New Jersey", city: "Patterson") 
fl = Office.create(state: "Florida", city: "Miami")
tx = Office.create(state: "Texas", city: "Dallas")
ca = Office.create(state: "California", city: "San Jose")

vivian = Patient.create(name: "Vivian", diagnosis: "sprained neck", exercise: "Planks", user_id: phil.id, office_id: ny.id)
hilary = Patient.create(name: "Hilary", diagnosis: "spoiled", exercise: "Spider Man Stretches", user_id: dre.id, office_id: nj.id)
jeffrey = Patient.create(name: "Jeffrey", diagnosis: "overworked", exercise: "Cross Hearts", user_id: mike.id, office_id: fl.id)
carlton = Patient.create(name: "Carlton", diagnosis: "vertically challenged", exercise: "Rows", user_id: house.id, office_id: tx.id)
ashley = Patient.create(name: "Ashley ", diagnosis: "youngest", exercise: "Pull Ups", user_id: doom.id, office_id: ca.id)
ted = Patient.create(name: "Ted", diagnosis: "forever single", exercise: "Banded push ups", user_id: phil.id, office_id: ny.id)
marshall = Patient.create(name: "Marshall", diagnosis: "tall", exercise: "squats", user_id: dre.id, office_id: nj.id)
lily = Patient.create(name: "Lily", diagnosis: "spendthrifter", exercise: "runs", user_id: mike.id, office_id: fl.id)
barney = Patient.create(name: "Barney", diagnosis: "womanizer", exercise: "push ups", user_id: house.id, office_id: tx.id)
robin = Patient.create(name: "Robin", diagnosis: "reporter", exercise: "eating", user_id: doom.id, office_id: ca.id)


