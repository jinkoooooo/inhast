
import java.io.BufferedReader;
import java.io.File;
import java.io.FileWriter;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;


public class RegisterFrame extends javax.swing.JFrame {
    DB_MAN DBM = new DB_MAN();
    int dupFlag = 1;
    
    public RegisterFrame() {
        initComponents();
        rbtn1.setSelected(true);
        ListPay.setSelectedIndex(0);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jLabel1 = new javax.swing.JLabel();
        lblPw = new javax.swing.JLabel();
        lblPws = new javax.swing.JLabel();
        lblName = new javax.swing.JLabel();
        lblCheck = new javax.swing.JLabel();
        lblRadio = new javax.swing.JLabel();
        lblJob = new javax.swing.JLabel();
        lblMoney = new javax.swing.JLabel();
        btnFinish = new javax.swing.JButton();
        btnId1 = new javax.swing.JButton();
        lblId = new javax.swing.JLabel();
        txtId = new javax.swing.JTextField();
        txtName = new javax.swing.JTextField();
        txtPw = new javax.swing.JPasswordField();
        txtPws = new javax.swing.JPasswordField();
        rbtn1 = new javax.swing.JRadioButton();
        rbtn3 = new javax.swing.JRadioButton();
        rbtn2 = new javax.swing.JRadioButton();
        cbtn4 = new javax.swing.JCheckBox();
        cbtn2 = new javax.swing.JCheckBox();
        cbtn3 = new javax.swing.JCheckBox();
        cbtn1 = new javax.swing.JCheckBox();
        cbtn5 = new javax.swing.JCheckBox();
        cbtn6 = new javax.swing.JCheckBox();
        comboJob = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        ListPay = new javax.swing.JList<>();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("굴림", 0, 18)); // NOI18N
        jLabel1.setText("회원가입");

        lblPw.setText("비밀번호");

        lblPws.setText("비밀번호 확인");

        lblName.setText("성명");

        lblCheck.setText("회원 구분");

        lblRadio.setText("관심 분야");

        lblJob.setText("직업");

        lblMoney.setText("결제방법");

        btnFinish.setText("회원가입");
        btnFinish.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnFinishActionPerformed(evt);
            }
        });

        btnId1.setText("중복확인");
        btnId1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnId1ActionPerformed(evt);
            }
        });

        lblId.setText("아이디");

        buttonGroup1.add(rbtn1);
        rbtn1.setText("정회원");

        buttonGroup1.add(rbtn3);
        rbtn3.setText("학생회원");

        buttonGroup1.add(rbtn2);
        rbtn2.setText("준회원");

        cbtn4.setText("스키");

        cbtn2.setText("게임");

        cbtn3.setText("골프");

        cbtn1.setText("수영");

        cbtn5.setText("독서");

        cbtn6.setText("테니스");

        comboJob.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "학생", "교수님", "선생님", "회사원", "연구원", "주부" }));

        ListPay.setModel(new javax.swing.AbstractListModel<String>() {
            String[] strings = { "현금", "카드", "포인트" };
            public int getSize() { return strings.length; }
            public String getElementAt(int i) { return strings[i]; }
        });
        jScrollPane1.setViewportView(ListPay);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(lblId)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(lblName)
                                .addGap(70, 70, 70)
                                .addComponent(txtName, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lblPw)
                                    .addComponent(lblPws))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtPws, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtPw, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtId, javax.swing.GroupLayout.PREFERRED_SIZE, 217, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(18, 18, 18)
                        .addComponent(btnId1)
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lblCheck)
                            .addComponent(lblRadio)
                            .addComponent(lblJob)
                            .addComponent(lblMoney))
                        .addGap(42, 42, 42)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(comboJob, javax.swing.GroupLayout.PREFERRED_SIZE, 255, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(rbtn1, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cbtn4, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(cbtn1, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGap(18, 18, 18)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(cbtn2)
                                            .addComponent(cbtn5))
                                        .addGap(55, 55, 55)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(cbtn6)
                                            .addComponent(cbtn3)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(rbtn2, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(rbtn3))))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                .addComponent(btnFinish)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 255, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(0, 0, Short.MAX_VALUE))))
            .addGroup(layout.createSequentialGroup()
                .addGap(177, 177, 177)
                .addComponent(jLabel1)
                .addGap(0, 0, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(lblId)
                        .addGap(14, 14, 14)
                        .addComponent(lblPw))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(btnId1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtPw, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtPws, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblPws))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(txtName, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(lblName))))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lblCheck)
                    .addComponent(rbtn1)
                    .addComponent(rbtn2)
                    .addComponent(rbtn3))
                .addGap(21, 21, 21)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(cbtn1)
                            .addComponent(lblRadio))
                        .addGap(18, 18, 18)
                        .addComponent(cbtn4))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(cbtn2)
                            .addComponent(cbtn3))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(cbtn5)
                            .addComponent(cbtn6))))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(20, 20, 20)
                        .addComponent(lblJob))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(18, 18, 18)
                        .addComponent(comboJob, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(26, 26, 26)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblMoney)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 76, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 24, Short.MAX_VALUE)
                .addComponent(btnFinish)
                .addGap(22, 22, 22))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    private void btnId1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnId1ActionPerformed
        String sql = "Select * from member where UserId = '";
        
        if (txtId.getText() == null){
            JOptionPane.showMessageDialog(null, "아이디를 입력해주세요.");
            return;
        }
        
        sql += txtId.getText() + "'";
        
        try{
            DBM.dbOpen();
            DBM.DB_rs = DBM.DB_stmt.executeQuery(sql);
            if (DBM.DB_rs.next()){
                JOptionPane.showMessageDialog(null, "중복된 아이디입니다.");
                txtId.setText("");
            }else{
                JOptionPane.showMessageDialog(null, "사용할 수 있는 아이디입니다.");
                dupFlag = 0;
            }
            DBM.dbClose();
        }catch(Exception e){
            System.out.println("SQLException : " + e.getMessage());
        }
    }//GEN-LAST:event_btnId1ActionPerformed

            
    
    private void btnFinishActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnFinishActionPerformed
        String sql = "Insert into member values('";
        
        if(txtId.getText() == null || 
              txtPw.getText() == null || 
              txtPws.getText() == null || 
              txtName.getText() == null){
            JOptionPane.showMessageDialog(null, "빈칸이 있습니다.");
            return;
        }
        if(txtPw.getText() == null ? txtPws.getText() != null : !txtPw.getText().equals(txtPws.getText())){
            JOptionPane.showMessageDialog(null, "비밀번호를 다시 확인해주세요.");
            txtPw.setText("");
            txtPws.setText("");
            return;
        }
        if (dupFlag == 1){
            JOptionPane.showMessageDialog(null, "아이디 중복을 확인해주세요.");
            return;
        }
        sql += txtId.getText() + "', '" + txtPw.getText() + "', '"
                + txtName.getText() + "', ";
        
        if(rbtn1.isSelected())
            sql += "0, ";
        if(rbtn2.isSelected())
            sql += "1, ";
        if(rbtn3.isSelected())
            sql += "2, ";
        
        int num = 0;
        if(cbtn1.isSelected())
            num += 32;
        if(cbtn2.isSelected())
            num += 16;
        if(cbtn3.isSelected())
            num += 8;
        if(cbtn4.isSelected())
            num +=4;
        if(cbtn5.isSelected())
            num +=  2;
        if(cbtn6.isSelected())
            num += 1;
        sql += num + ", '";
        
        sql += comboJob.getSelectedItem().toString() + "', '";
        
        int listNum = ListPay.getSelectedIndex();
        if (listNum == 0)
            sql += "현금";
        if (listNum == 1)
            sql += "카드";
        if (listNum == 2)
            sql += "포인트";
        
        sql += "')";
        
        try{
            DBM.dbOpen();
            DBM.DB_stmt.executeUpdate(sql);
            DBM.dbClose();
        }catch(Exception e){
            System.out.println("SQLException : " + e.getMessage());
        }
        JOptionPane.showMessageDialog(null, "회원가입이 완료되었습니다.");
        System.exit(0);
    }//GEN-LAST:event_btnFinishActionPerformed

    
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
            java.util.logging.Logger.getLogger(RegisterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(RegisterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(RegisterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(RegisterFrame.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
   
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new RegisterFrame().setVisible(true);
            }
        });
    }
    
    

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JList<String> ListPay;
    private javax.swing.JButton btnFinish;
    private javax.swing.JButton btnId1;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JCheckBox cbtn1;
    private javax.swing.JCheckBox cbtn2;
    private javax.swing.JCheckBox cbtn3;
    private javax.swing.JCheckBox cbtn4;
    private javax.swing.JCheckBox cbtn5;
    private javax.swing.JCheckBox cbtn6;
    private javax.swing.JComboBox<String> comboJob;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JLabel lblCheck;
    private javax.swing.JLabel lblId;
    private javax.swing.JLabel lblJob;
    private javax.swing.JLabel lblMoney;
    private javax.swing.JLabel lblName;
    private javax.swing.JLabel lblPw;
    private javax.swing.JLabel lblPws;
    private javax.swing.JLabel lblRadio;
    private javax.swing.JRadioButton rbtn1;
    private javax.swing.JRadioButton rbtn2;
    private javax.swing.JRadioButton rbtn3;
    private javax.swing.JTextField txtId;
    private javax.swing.JTextField txtName;
    private javax.swing.JPasswordField txtPw;
    private javax.swing.JPasswordField txtPws;
    // End of variables declaration//GEN-END:variables
}
    
