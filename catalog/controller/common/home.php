<?php
class ControllerCommonHome extends Controller {
	public function index() {
		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		if (isset($this->request->get['route'])) {
			$this->document->addLink($this->config->get('config_url'), 'canonical');
		}

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		//$data['aboutus'] = $this->load->controller('information/information');

        $this->load->language('information/information');

        $this->load->model('catalog/information');

        $data['aboutustitle'] = html_entity_decode($this->model_catalog_information->getInformation(4)['title'], ENT_QUOTES, 'UTF-8') . "\n";
        $data['aboutustext']= html_entity_decode($this->model_catalog_information->getInformation(4)['description'], ENT_QUOTES, 'UTF-8') . "\n";
        $data['aboutustext'] = substr($data['aboutustext'],0,2000).'...';

		$this->response->setOutput($this->load->view('common/home', $data));
	}
}
