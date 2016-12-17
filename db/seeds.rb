Room.create(name: "Executive", sits: 20, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: true, catering: true)
Room.create(name: "Management", sits: 30, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: true, catering: false)
Room.create(name: "Byebye", sits: 95, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: false, catering: true)
Room.create(name: "Workers", sits: 75, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: true, catering: true)
Room.create(name: "Official", sits: 150, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: false, catering: false)
Room.create(name: "Stadium", sits: 500, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: true, catering: false)
Room.create(name: "Standard large", sits: 80, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: false, catering: true)
Room.create(name: "Standard", sits: 50, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: true, catering: true)
Room.create(name: "Small", sits: 20, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: true, catering: false)
Room.create(name: "Kids", sits: 6, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: false, catering: true)
Room.create(name: "Party", sits: 150, available: true, user_id: 1, description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo reprehenderit dignissimos possimus suscipit, blanditiis cum voluptate ipsum temporibus quaerat vitae accusantium, officia quam voluptas. Odit quod laudantium quo reprehenderit quibusdam! Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis quisquam quas qui, corrupti placeat ullam ab consequuntur, corporis, ipsam a, impedit omnis consequatur dolore maiores dolores? Quas consequatur, officiis magnam.", handicap: true, catering: true)

Booking.create(name: "Depart ancien PDG", user_id: 1, room_id: 1, start_time: DateTime.new(2016, 12, 20, 18, 0, 0), end_time: DateTime.new(2016, 12, 20, 20, 30, 0))
Booking.create(name: "New year", user_id: 1, room_id: 2, start_time: DateTime.new(2016, 12, 31, 18, 0, 0), end_time: DateTime.new(2016, 12, 31, 23, 59, 0))
Booking.create(name: "Arrivee nouveau PDG", user_id: 1, room_id: 12, start_time: DateTime.new(2017, 1, 2, 18, 30, 0), end_time: DateTime.new(2017, 1, 2, 22, 30, 0))
