import javax.persistence.*;

 @Entity
 @Table(name="uers")
    public class User {

        @Id
        @GeneratedValue(strategy= GenerationType.IDENTITY)
        @Column(name="id")
        protected int id;

        @Column(name="name")
        protected String name;

        @Column(name="age")
        protected int age;


        public User() {
        }

        public User(String name, int age) {
            super();
            this.name = name;
            this.age=age;
        }

        public User(int id, String name, int age) {
            super();
            this.id = id;
            this.name = name;
            this.age=age;
        }

     public int getId() {
         return id;
     }

     public void setId(int id) {
         this.id = id;
     }

     public String getName() {
         return name;
     }

     public void setName(String name) {
         this.name = name;
     }

     public int getAge() {
         return age;
     }

     public void setAge(int age) {
         this.age = age;
     }
 }
