module com.premiumparking {
    requires javafx.graphics;
    requires javafx.controls;
    requires javafx.fxml;
    requires java.sql;

    requires org.kordamp.bootstrapfx.core;
    requires mysql.connector.java;

    opens com.premiumparking to javafx.fxml;
    exports com.premiumparking;
}