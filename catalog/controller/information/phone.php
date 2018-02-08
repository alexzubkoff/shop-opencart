<?php
/**
 * Created by PhpStorm.
 * User: Admin
 * Date: 08.02.2018
 * Time: 17:19
 */

class ControllerInformationPhone extends Controller {

    public function index()
    {
        $this->load->language('information/contact');

        $this->document->setTitle($this->language->get('heading_title'));

        if (($this->request->server['REQUEST_METHOD'] == 'POST')) {

            var_dump($this->request->post);
            exit();
            /*$mail = new Mail();
            $mail->protocol = $this->config->get('config_mail_protocol');
            $mail->parameter = $this->config->get('config_mail_parameter');
            $mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
            $mail->smtp_username = $this->config->get('config_mail_smtp_username');
            $mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
            $mail->smtp_port = $this->config->get('config_mail_smtp_port');
            $mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');

            $mail->setTo($this->config->get('config_email'));
            //$mail->setFrom($this->request->post['email']);
            $mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
            $mail->setSubject(html_entity_decode(sprintf($this->request->post['phone '], $this->request->post['name']), ENT_QUOTES, 'UTF-8'));

            $mail->setText($this->request->post['name']);
            $mail->setText($this->request->post['phone']);
            $mail->setText($this->request->post['subject']);

            $mail->send();

            $this->response->redirect($this->url->link('information/contact/success'));*/


        }
    }
}