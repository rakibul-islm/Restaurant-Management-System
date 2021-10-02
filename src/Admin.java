
import java.awt.Color;
import java.awt.HeadlessException;
import java.awt.event.WindowEvent;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author MD RAKIBUL ISLAM
 */
public class Admin extends javax.swing.JFrame {

    public ImageIcon icn;
    Connection con = null;

    /**
     * Creates new form SetImageBackground
     */
    public Admin() {
        con = DB.dbconnect();
//        this.setUndecorated(true);
//        this.setAlwaysOnTop(true);
        this.setTitle("Restaurant RRMS");

        icn = new ImageIcon(getClass().getResource("/Images/icn.png"));
        this.setIconImage(icn.getImage());
        this.setResizable(false);
        initComponents();
//        setExtendedState(JFrame.MAXIMIZED_BOTH);
        bg.setBackground(new Color(0, 0, 0, 200));
        menubar.setBackground(new Color(0, 0, 0, 200));
        Login lg = new Login();
        uname.setText(lg.user);
        urestu.setText(lg.restu);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        menubar = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        offers = new javax.swing.JLabel();
        bg = new javax.swing.JPanel();
        jLabel20 = new javax.swing.JLabel();
        uname = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        urestu = new javax.swing.JLabel();
        jSeparator3 = new javax.swing.JSeparator();
        jSeparator4 = new javax.swing.JSeparator();
        jSeparator5 = new javax.swing.JSeparator();
        jSeparator6 = new javax.swing.JSeparator();
        jSeparator7 = new javax.swing.JSeparator();
        jSeparator2 = new javax.swing.JSeparator();
        jPanel3 = new javax.swing.JPanel();
        jLabel19 = new javax.swing.JLabel();
        jSeparator8 = new javax.swing.JSeparator();
        jPanel4 = new javax.swing.JPanel();
        jLabel21 = new javax.swing.JLabel();
        jPanel5 = new javax.swing.JPanel();
        jLabel23 = new javax.swing.JLabel();
        jPanel6 = new javax.swing.JPanel();
        jLabel24 = new javax.swing.JLabel();
        jPanel7 = new javax.swing.JPanel();
        jLabel29 = new javax.swing.JLabel();
        jPanel8 = new javax.swing.JPanel();
        jLabel30 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel1.setFont(new java.awt.Font("Verdana", 1, 24)); // NOI18N
        jLabel1.setForeground(new java.awt.Color(255, 204, 0));
        jLabel1.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel1.setText("RAKIB'S RESTAURANT MANAGEMENT SYSTEM");

        jLabel8.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(255, 0, 51));
        jLabel8.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel8.setText("Check Orders");
        jLabel8.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jLabel8MouseClicked(evt);
            }
        });

        jLabel12.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/icn36.png"))); // NOI18N

        offers.setFont(new java.awt.Font("Verdana", 1, 18)); // NOI18N
        offers.setForeground(new java.awt.Color(255, 51, 51));
        offers.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        offers.setText("Offer |");
        offers.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                offersMouseClicked(evt);
            }
        });

        javax.swing.GroupLayout menubarLayout = new javax.swing.GroupLayout(menubar);
        menubar.setLayout(menubarLayout);
        menubarLayout.setHorizontalGroup(
            menubarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(menubarLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel12)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 73, Short.MAX_VALUE)
                .addComponent(offers)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel8)
                .addContainerGap())
        );
        menubarLayout.setVerticalGroup(
            menubarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(menubarLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(menubarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel12, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE)
                    .addGroup(menubarLayout.createSequentialGroup()
                        .addGroup(menubarLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel1)
                            .addComponent(jLabel8)
                            .addComponent(offers))
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addContainerGap())
        );

        jPanel1.add(menubar, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 960, 50));

        bg.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel20.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel20.setForeground(new java.awt.Color(153, 255, 153));
        jLabel20.setText("Welcome !");
        bg.add(jLabel20, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 438, -1, -1));

        uname.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        uname.setForeground(new java.awt.Color(102, 255, 255));
        uname.setText("Mr. User");
        bg.add(uname, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 461, -1, -1));

        jLabel22.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel22.setForeground(new java.awt.Color(102, 255, 255));
        jLabel22.setText("(Manager)");
        bg.add(jLabel22, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 484, -1, 15));

        urestu.setFont(new java.awt.Font("Tahoma", 1, 10)); // NOI18N
        urestu.setForeground(new java.awt.Color(102, 255, 255));
        urestu.setText("ABC RESTAURANT");
        bg.add(urestu, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 505, -1, 15));

        jSeparator3.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        bg.add(jSeparator3, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 419, 250, 13));

        jSeparator4.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        bg.add(jSeparator4, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 140, 250, 12));

        jSeparator5.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        bg.add(jSeparator5, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 210, 260, 12));

        jSeparator6.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        bg.add(jSeparator6, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 280, 240, 12));

        jSeparator7.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        bg.add(jSeparator7, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 350, 260, 12));

        jSeparator2.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        bg.add(jSeparator2, new org.netbeans.lib.awtextra.AbsoluteConstraints(-10, 70, 260, 12));

        jPanel3.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPanel3MouseClicked(evt);
            }
        });

        jLabel19.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel19.setForeground(new java.awt.Color(51, 51, 0));
        jLabel19.setText("Order Now");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel19, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(17, Short.MAX_VALUE)
                .addComponent(jLabel19)
                .addContainerGap())
        );

        bg.add(jPanel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 80, 210, 50));

        jSeparator8.setFont(new java.awt.Font("Tahoma", 1, 11)); // NOI18N
        bg.add(jSeparator8, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 240, 10));

        jPanel4.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPanel4MouseClicked(evt);
            }
        });

        jLabel21.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel21.setForeground(new java.awt.Color(51, 51, 0));
        jLabel21.setText("Input Cost");

        javax.swing.GroupLayout jPanel4Layout = new javax.swing.GroupLayout(jPanel4);
        jPanel4.setLayout(jPanel4Layout);
        jPanel4Layout.setHorizontalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel4Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel21, javax.swing.GroupLayout.PREFERRED_SIZE, 198, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        jPanel4Layout.setVerticalGroup(
            jPanel4Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel4Layout.createSequentialGroup()
                .addContainerGap(17, Short.MAX_VALUE)
                .addComponent(jLabel21)
                .addContainerGap())
        );

        bg.add(jPanel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 220, 210, 50));

        jPanel5.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPanel5MouseClicked(evt);
            }
        });

        jLabel23.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel23.setForeground(new java.awt.Color(51, 51, 0));
        jLabel23.setText("Employees");

        javax.swing.GroupLayout jPanel5Layout = new javax.swing.GroupLayout(jPanel5);
        jPanel5.setLayout(jPanel5Layout);
        jPanel5Layout.setHorizontalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel5Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel23)
                .addContainerGap(104, Short.MAX_VALUE))
        );
        jPanel5Layout.setVerticalGroup(
            jPanel5Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel5Layout.createSequentialGroup()
                .addContainerGap(17, Short.MAX_VALUE)
                .addComponent(jLabel23)
                .addContainerGap())
        );

        bg.add(jPanel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 150, 210, 50));

        jPanel6.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPanel6MouseClicked(evt);
            }
        });

        jLabel24.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel24.setForeground(new java.awt.Color(51, 51, 0));
        jLabel24.setText("About");

        javax.swing.GroupLayout jPanel6Layout = new javax.swing.GroupLayout(jPanel6);
        jPanel6.setLayout(jPanel6Layout);
        jPanel6Layout.setHorizontalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel6Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel24)
                .addContainerGap(147, Short.MAX_VALUE))
        );
        jPanel6Layout.setVerticalGroup(
            jPanel6Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel6Layout.createSequentialGroup()
                .addContainerGap(17, Short.MAX_VALUE)
                .addComponent(jLabel24)
                .addContainerGap())
        );

        bg.add(jPanel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 360, 210, 50));

        jPanel7.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPanel7MouseClicked(evt);
            }
        });

        jLabel29.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel29.setForeground(new java.awt.Color(51, 51, 0));
        jLabel29.setText("Sales Report");

        javax.swing.GroupLayout jPanel7Layout = new javax.swing.GroupLayout(jPanel7);
        jPanel7.setLayout(jPanel7Layout);
        jPanel7Layout.setHorizontalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel7Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel29)
                .addContainerGap(87, Short.MAX_VALUE))
        );
        jPanel7Layout.setVerticalGroup(
            jPanel7Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel7Layout.createSequentialGroup()
                .addContainerGap(17, Short.MAX_VALUE)
                .addComponent(jLabel29)
                .addContainerGap())
        );

        bg.add(jPanel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 290, 210, 50));

        jPanel8.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                jPanel8MouseClicked(evt);
            }
        });

        jLabel30.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel30.setForeground(new java.awt.Color(51, 51, 0));
        jLabel30.setText("Show Menu");

        javax.swing.GroupLayout jPanel8Layout = new javax.swing.GroupLayout(jPanel8);
        jPanel8.setLayout(jPanel8Layout);
        jPanel8Layout.setHorizontalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel8Layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel30)
                .addContainerGap(94, Short.MAX_VALUE))
        );
        jPanel8Layout.setVerticalGroup(
            jPanel8Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel8Layout.createSequentialGroup()
                .addContainerGap(17, Short.MAX_VALUE)
                .addComponent(jLabel30)
                .addContainerGap())
        );

        bg.add(jPanel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, 210, 50));

        jPanel1.add(bg, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 50, 230, 540));

        jLabel6.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        jLabel6.setIcon(new javax.swing.ImageIcon(getClass().getResource("/Images/AfterLogin - Copy.jpg"))); // NOI18N
        jPanel1.add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(-250, 0, 1210, 590));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void jLabel8MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jLabel8MouseClicked
        // TODO add your handling code here:
        String prc = null;
        try {
            String totalcrg = "SELECT SUM(Price) FROM `order`;";
            Statement st1 = con.createStatement();
            ResultSet rs1 = st1.executeQuery(totalcrg);
            while (rs1.next()) {
                prc = rs1.getString("SUM(Price)");
            }

        } catch (Exception e) {
        }
        if (prc == null) {
            JOptionPane.showMessageDialog(null, "You have no orders at this moment.", "Message!", 1);
        } else {
            try {

                String query = "INSERT INTO totalsales (Date,Time, Name, Quantity, Price,Placement) SELECT * FROM `order`;";
                PreparedStatement ps = con.prepareStatement(query);
                ps.executeUpdate();

            } catch (HeadlessException | SQLException e) {
                System.out.println(e);
            }
            InvoiceSystem lg = new InvoiceSystem();
            lg.setVisible(true);
            this.dispose();
        }
    }//GEN-LAST:event_jLabel8MouseClicked

    private void jPanel8MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel8MouseClicked
        // TODO add your handling code here:
        AdminShowMenu lg = new AdminShowMenu();
        lg.setVisible(true);
        this.dispatchEvent(new WindowEvent(
                this, WindowEvent.WINDOW_CLOSING));
        this.dispose();
    }//GEN-LAST:event_jPanel8MouseClicked

    private void jPanel3MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel3MouseClicked
        // TODO add your handling code here:
        AdminOrderManagement lg = new AdminOrderManagement();
        lg.setVisible(true);
        this.dispatchEvent(new WindowEvent(
                this, WindowEvent.WINDOW_CLOSING));
        this.dispose();
    }//GEN-LAST:event_jPanel3MouseClicked

    private void jPanel5MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel5MouseClicked
        // TODO add your handling code here:
        Employees lg = new Employees();
        lg.setVisible(true);
        this.dispatchEvent(new WindowEvent(
                this, WindowEvent.WINDOW_CLOSING));
        this.dispose();
    }//GEN-LAST:event_jPanel5MouseClicked

    private void jPanel4MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel4MouseClicked
        // TODO add your handling code here:
        InputCost lg = new InputCost();
        lg.setVisible(true);
        this.dispatchEvent(new WindowEvent(
                this, WindowEvent.WINDOW_CLOSING));
        this.dispose();
    }//GEN-LAST:event_jPanel4MouseClicked

    private void jPanel7MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel7MouseClicked
        // TODO add your handling code here:
        SalesReport lg = new SalesReport();
        lg.setVisible(true);
        this.dispatchEvent(new WindowEvent(
                this, WindowEvent.WINDOW_CLOSING));
        this.dispose();
    }//GEN-LAST:event_jPanel7MouseClicked

    private void jPanel6MouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_jPanel6MouseClicked
        // TODO add your handling code here:
        CAbout lg = new CAbout();
        lg.setVisible(true);
        this.dispatchEvent(new WindowEvent(
                this, WindowEvent.WINDOW_CLOSING));
        this.dispose();
    }//GEN-LAST:event_jPanel6MouseClicked

    private void offersMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_offersMouseClicked
        // TODO add your handling code here:
        Offer lg = new Offer();
        lg.setVisible(true);
        this.dispatchEvent(new WindowEvent(
                this, WindowEvent.WINDOW_CLOSING));
        this.dispose();
    }//GEN-LAST:event_offersMouseClicked

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                Admin sb = new Admin();
//                sb.dispose();
//                sb.setTitle("Rakib's Restaurant Management System");
                sb.setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JPanel bg;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel30;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPanel jPanel4;
    private javax.swing.JPanel jPanel5;
    private javax.swing.JPanel jPanel6;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JPanel jPanel8;
    private javax.swing.JSeparator jSeparator2;
    private javax.swing.JSeparator jSeparator3;
    private javax.swing.JSeparator jSeparator4;
    private javax.swing.JSeparator jSeparator5;
    private javax.swing.JSeparator jSeparator6;
    private javax.swing.JSeparator jSeparator7;
    private javax.swing.JSeparator jSeparator8;
    private javax.swing.JPanel menubar;
    private javax.swing.JLabel offers;
    private javax.swing.JLabel uname;
    private javax.swing.JLabel urestu;
    // End of variables declaration//GEN-END:variables
}
