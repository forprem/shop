package ua.com.coffee.service.impl;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.web.multipart.MultipartFile;
import ua.com.coffee.model.photo.Photo;
import ua.com.coffee.service.interfaces.PhotoService;
import ua.com.coffee.tools.MockService;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;
import static ua.com.coffee.tools.MockModel.*;

public class PhotoServiceImplTest {

    private static PhotoService photoService;

    @BeforeClass
    public static void setUp() {
        System.out.println("\nTesting class \"OrderServiceImpl\" - START.\n");

        photoService = MockService.getPhotoService();
    }

    @AfterClass
    public static void tearDown() {
        System.out.println("Testing class \"OrderServiceImpl\" - FINISH.\n");
    }

    @Test
    public void getByIdTest() throws Exception {
        System.out.print("-> getById() - ");

        Photo photo = photoService.get(ID);
        assertNotNull(photo);

        System.out.println("OK!");
    }

    @Test(expected = NullPointerException.class)
    public void getByUnknownId() throws Exception {
        System.out.println("-> getByUnknownId() - OK!");
        photoService.get(UNKNOWN_ID);
    }

    @Test
    public void getByTitleTest() throws Exception {
        System.out.print("-> getByTitle() - ");

        Photo photo = photoService.get(TITLE);
        assertNotNull(photo);

        System.out.println("OK!");
    }

    @Test(expected = IllegalArgumentException.class)
    public void getByNullTitleTest() throws Exception {
        System.out.println("-> getByNullTitle() - OK!");

        String title = null;
        photoService.get(title);
    }

    @Test(expected = IllegalArgumentException.class)
    public void getByEmptyTitleTest() throws Exception {
        System.out.println("-> getByEmptyTitle() - OK!");

        String title = "";
        Photo photo = photoService.get(title);
    }

    @Test(expected = NullPointerException.class)
    public void getByUnknownTitleTest() throws Exception {
        System.out.println("-> getByUnknownTitle() - OK!");

        Photo photo = photoService.get(ANY_STRING);
    }

    @Test
    public void removeByTitleTest() throws Exception {
        System.out.print("-> removeByTitle() - ");

        photoService.remove(TITLE);

        System.out.println("OK!");
    }

    @Test(expected = IllegalArgumentException.class)
    public void removeByNullTitleTest() throws Exception {
        System.out.println("-> removeByNullTitle() - OK!");

        String title = null;
        photoService.remove(title);
    }

    @Test(expected = IllegalArgumentException.class)
    public void removeByEmptyTitleTest() throws Exception {
        System.out.println("-> removeByEmptyTitle() - OK!");

        String title = "";
        photoService.remove(title);
    }

    @Test
    public void getAllTest() throws Exception {
        System.out.println("-> getAll() - ");

        Collection<Photo> photos = photoService.getAll();
        assertNotNull(photos);
        assertTrue(photos.size() >= 0);

        System.out.println("OK!");
    }

    @Test
    public void noExceptionOfVoidMethodTest() throws Exception {
        System.out.print("-> noExceptionOfVoidMethod() - ");

        Photo photo = null;
        photoService.add(photo);
        photoService.update(photo);
        photoService.remove(photo);

        photo = getPhoto();
        photoService.add(photo);
        photoService.update(photo);
        photoService.remove(photo);

        List<Photo> photos = null;
        photoService.add(photos);
        photoService.remove(photos);

        photos = new ArrayList<>();
        photoService.add(photos);
        photoService.remove(photos);

        photos.add(photo);
        photoService.add(photos);
        photoService.remove(photos);

        System.out.println("OK!");
    }


    @Test
    public void saveFile() throws Exception {
        System.out.print("-> saveFile() - ");

        MultipartFile file = null;
        photoService.saveFile(file);

        System.out.println("OK!");
    }

    @Test
    public void deleteFile() throws Exception {
        System.out.print("-> deleteFile() - ");

        String url = null;
        photoService.deleteFile(url);

        url = "";
        photoService.deleteFile(url);

        photoService.deleteFile(ANY_STRING);

        System.out.println("OK!");
    }

}