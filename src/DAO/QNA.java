package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class QNA {

    private Connection connection;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;
    private int result;
    private String sql;

    // Definitions DB-related
    String dbURL = "******";
    String dbUSERNAME = "***";
    String dbPASSWORD = "*********";

    // Definition of return value
    int success = 1;
    int error_connection = -1;
    int error_sql = -2;

    public QNA () {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(dbURL, dbUSERNAME, dbPASSWORD);
        } catch (Exception exception) {
            System.out.println("Database Error");
        }
    }

    // QNA Question
    public int question (DTO.QNA qna) {
        // Definition SQL
        sql = "INSERT INTO `QNA` (`username`, `password`, `title`, `content`, `access`) VALUES (?, ?, ?, ?, ?)";

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, qna.getUsername());
            preparedStatement.setString(2, qna.getPassword());
            preparedStatement.setString(3, qna.getTitle());
            preparedStatement.setString(4, qna.getContent());
            preparedStatement.setString(5, qna.getAccess());

            result = preparedStatement.executeUpdate() == 1 ? success : error_sql;
        } catch (Exception exception) {
            result = error_connection;
        }

        return result;
    }

    // QNA Answer
    public int answer (DTO.QNA qna) {
        // Definition SQL
        sql = "UPDATE `QNA` SET `reply` = ? WHERE `index` = ?";

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, qna.getReply());
            preparedStatement.setInt(2, qna.getIndex());

            result = preparedStatement.executeUpdate() == 1 ? success : error_sql;
        } catch (Exception exception) {
            result = error_connection;

            exception.printStackTrace();
        }

        return result;
    }

    // QNA List
    // Related DTO.QNA.listSet()
    public ArrayList<DTO.QNA> list (int page) {
        // Definition SQL
        sql = "SELECT `index`, `username`, `title`, `date`, `reply`, `access` FROM `QNA` ORDER BY `index` DESC LIMIT ? OFFSET ?";

        // Page
        int countList;
        int offsetCount;
        countList = 10;
        offsetCount = countList * (page - 1);

        ArrayList<DTO.QNA> result;

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, countList);
            preparedStatement.setInt(2, offsetCount);

            resultSet = preparedStatement.executeQuery();
            result = new QNA().listSet(resultSet);
        } catch (Exception exception) {
            result = null;
        }

        return result;
    }

    // QNA List for admin
    // Related DTO.QNA.listSet()
    public ArrayList<DTO.QNA> list (String reply) {
        // Definition SQL
        String piece = reply == null || reply.equals("") || reply.equals("wait") ? "NULL" : reply.equals("done") ? "NOT NULL" : null;
        sql = "SELECT `index`, `username`, `title`, `date`, `reply`, `access` FROM `QNA` WHERE `reply` IS " + piece + " ORDER BY `index` DESC";

        ArrayList<DTO.QNA> result;

        try {
            preparedStatement = connection.prepareStatement(sql);

            resultSet = preparedStatement.executeQuery();
            result = new QNA().listSet(resultSet);
        } catch (Exception exception) {
            result = null;

            exception.printStackTrace();
        }

        return result;
    }

    // QNA Read for public
    public DTO.QNA readPublic (DTO.QNA qna) {
        // Definition SQL
        sql = "SELECT * FROM `QNA` WHERE `index` = ? AND `access` = 'public'";

        DTO.QNA result;

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, qna.getIndex());

            resultSet = preparedStatement.executeQuery();
            result = new QNA().qnaSet(resultSet);
        } catch (Exception exception) {
            result = null;
        }

        return result;
    }

    // QNA Read for private
    public DTO.QNA readPrivate (DTO.QNA qna) {
        // Definition SQL
        sql = "SELECT * FROM `QNA` WHERE `index` = ? AND `access` = 'private' AND `password` = ?";

        DTO.QNA result;

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, qna.getIndex());
            preparedStatement.setString(2, qna.getPassword());

            resultSet = preparedStatement.executeQuery();
            result = new QNA().qnaSet(resultSet);
        } catch (Exception exception) {
            result = null;

            exception.printStackTrace();
        }

        return result;
    }

    // QNA Read for private
    public DTO.QNA readAdmin (DTO.QNA qna) {
        // Definition SQL
        sql = "SELECT * FROM `QNA` WHERE `index` = ?";

        DTO.QNA result;

        try {
            preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, qna.getIndex());

            resultSet = preparedStatement.executeQuery();
            result = new QNA().qnaSet(resultSet);
        } catch (Exception exception) {
            result = null;
        }

        return result;
    }

    // QNA TotalCount
    public int totalCount () {
        // Definition SQL
        sql = "SELECT COUNT(`index`) FROM `QNA`";

        try {
            preparedStatement = connection.prepareStatement(sql);
            resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                result = resultSet.getInt(1);
            } else {
                result = error_sql;
            }
        } catch (Exception exception) {
            result = error_connection;
        }

        return result;
    }

    // List Settings
    public ArrayList<DTO.QNA> listSet(ResultSet resultSet) {
        ArrayList<DTO.QNA> result = new ArrayList<>();
        try {
            while (resultSet.next()) {
                DTO.QNA qna = new DTO.QNA();
                qna.setIndex(resultSet.getInt(1));
                qna.setUsername(resultSet.getString(2));
                qna.setTitle(resultSet.getString(3));
                qna.setDate(resultSet.getString(4));
                qna.setReply(resultSet.getString(5));
                qna.setAccess(resultSet.getString(6));

                result.add(qna);
            }
        } catch (Exception exception) {
            result = null;
        }
        return result;
    }

    // DTO.QNA Settings
    public DTO.QNA qnaSet(ResultSet resultSet) {
        DTO.QNA result = new DTO.QNA();
        try {
            if (resultSet.next()) {
                result.setIndex(resultSet.getInt(1));
                result.setUsername(resultSet.getString(2));
                result.setTitle(resultSet.getString(4));
                result.setContent(resultSet.getString(5));
                result.setDate(resultSet.getString(6));
                result.setReply(resultSet.getString(7));
                result.setAccess(resultSet.getString(8));
            } else {
                result = null;
            }
        } catch (Exception exception) {
            result = null;
        }

        return result;
    }
}
