import org.hibernate.Session;
import org.hibernate.Transaction;

import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public List<User> getAll(){
        Transaction transaction = null;
        List < User > listOfUser = null;
        try {
            // start a transaction
            Session session = DBHelper.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            // get an user object

            listOfUser = session.createQuery("from User").list(); // забераем из наименование класса

            // commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return listOfUser;
    }
    public void delete(int id){
        Transaction transaction = null;
        User user = null;
        try{
            Session session = DBHelper.getSessionFactory().openSession();
            transaction = session.beginTransaction();
            user = (User) session.get(User.class,id);
            if(user!=null){
                session.delete(user);
                System.out.println("Вы удалили пользователя!");
            }
            transaction.commit();

        }catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }

    }
    public void add(User user){
        Transaction transaction = null;
        try{
            Session session = DBHelper.getSessionFactory().openSession();
            transaction=session.beginTransaction();
            session.save(user);
            transaction.commit();

        }catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }

    }
    public void update(User user){
        Transaction transaction = null;
        try{
            Session session = DBHelper.getSessionFactory().openSession();
            transaction=session.beginTransaction();
            session.merge(user);
            transaction.commit();

        }catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }

    }
    public User getbyID(int id){
        Transaction transaction = null;
        User user = null;
        try{
            Session session = DBHelper.getSessionFactory().openSession();
            transaction=session.beginTransaction();
            user = (User)session.get(User.class,id);
            transaction.commit();
        }catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return user;


    }
}
