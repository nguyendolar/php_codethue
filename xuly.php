<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include('vendor/autoload.php');
error_reporting(0);
define("SMTP_HOST", "smtp.gmail.com"); //Hostname of the mail server
define("SMTP_PORT", "465"); //Port of the SMTP like to be 25, 80, 465 or 587
define("SMTP_UNAME", "purplerose2305@gmail.com"); //Username for SMTP authentication any valid email created in your domain
define("SMTP_PWORD", "vtsvzroezxsrvvze"); //Password for SMTP authentication
// you can get your SMTP host here http://www.asif18.com/6/php/list-of-smtp-and-pop3-severs,-hosts,-ports-email-servers/
$name = $_POST['name'];
$email = $_POST['email'];
$tieude = $_POST['tieude'];
$noidungpost = $_POST['noidung'];
$noidung = '<strong>Name : </strong> '.$name.'<br><strong>Email : </strong> '.$email.'<br><strong>Subject : </strong> '.$tieude.'<br> <strong>Message : </strong><br><p>'.$noidungpost.'</p>';
        $mail = new PHPMailer(true);                              
        try {
            $mail->CharSet = "UTF-8";
            $mail->SMTPDebug = 0;                                 
            $mail->isSMTP();                                      
            $mail->Host = SMTP_HOST;  
            $mail->SMTPAuth = true;                               
            $mail->Username = SMTP_UNAME;                 
            $mail->Password = SMTP_PWORD;                           
            $mail->SMTPSecure = 'ssl';                            
            $mail->Port = SMTP_PORT;                                   
            $mail->setFrom(SMTP_UNAME, "MINISHOP");
            $mail->addAddress("nguyencaonguyencmu@gmail.com", "Nguyen");     
            $mail->addReplyTo(SMTP_UNAME, 'MINISHOP');
            $mail->isHTML(true);                                  
            $mail->Subject = 'Feedback';
            $mail->Body = $noidung;
            $mail->AltBody = $noidung; 
            $result = $mail->send();
            if (!$result) {
                $error = "Có lỗi xảy ra trong quá trình gửi mail";
            }
            header('Location: contact.php');
        } catch (Exception $e) {
            echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
        }

?>