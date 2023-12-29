package mvc.main;


import mvc.configuration.JPAConfig;
import mvc.entity.BookDetailsEntity;
import mvc.entity.BookEntity;
import mvc.entity.CategoryEntity;
import mvc.repository.BookRepository;
import mvc.repository.CategoryRepository;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import java.time.LocalDate;

public class MainTesst {
            static ApplicationContext context = new AnnotationConfigApplicationContext(JPAConfig.class);
            static BookRepository bookRepository =(BookRepository) context.getBean("bookRepository");
            static CategoryRepository categoryRepository =(CategoryRepository) context.getBean("categoryRepository");

            private static CategoryEntity createNewCategory(){
                CategoryEntity category = new CategoryEntity();
                category.setName("IT");
                category.setDescription("IT books");
                return  category;
    }
    private  static BookEntity createNewBook(){
        BookDetailsEntity bookDetailsEntity = new BookDetailsEntity();
        bookDetailsEntity.setIsbn("I2438743");
        bookDetailsEntity.setNumberOfPage(133);
        bookDetailsEntity.setPrice(234323.0);
        bookDetailsEntity.setPublishDate(LocalDate.now());


        BookEntity bookEntity = new BookEntity();
        bookEntity.setName("JAva a-z");
        bookEntity.setAuthor("Roger");
        bookEntity.setBookDetails(bookDetailsEntity);
        bookDetailsEntity.setBook(bookEntity);

        return bookEntity;
    }
    private  static void createNewBookEntry(){
                CategoryEntity categoryEntity = new CategoryEntity();
                categoryEntity.setId(1);
                BookEntity bookEntity = createNewBook();
                bookEntity.setCategory(categoryEntity);
    }
    private static  void createNewBookEntryWithNewCategory(){
                CategoryEntity categoryEntity = createNewCategory();
                categoryRepository.save(categoryEntity);

                BookEntity bookEntity = createNewBook();
                bookEntity.setCategory(categoryEntity);
                bookRepository.save(bookEntity);
    }

    public static void main(String[] args) {
        //createNewBookEntry();
        //createNewBookEntryWithNewCategory();
    }
}
