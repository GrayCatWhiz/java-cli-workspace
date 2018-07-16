import java.awt.*;
import javax.swing.*;

public class Application {

    private static JFrame frame;

    private static void initComponents(){
        frame = new JFrame("Simple Application");
        frame.setSize(new Dimension(250,250));
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }

    public static void main(String args[]) {
        initComponents();
        System.out.println("Edited Application");
    }
}