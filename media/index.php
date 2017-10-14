<?php
/**
 * Simple Downloader
 * @author Sang Min Lee <tangoslee@gmail.com>
 *
 * http://matrix.senecac.on.ca/~smlee36/cpr101/files/?id=[1-6]
 */
$idx = (isset($_REQUEST['id'])) ? (int) $_REQUEST['id'] : '';

$files = array(
    '2' => 'agreement.png',
    '3' => 'Dear_Seneca_employees.pdf',
    '4' => 'chart_outline.pdf',
    '5' => 'WBS-CPR.xlsx',
    '6' => 'cpr_video.mp4'
);

if (!$idx || empty($files[$idx])) {
    exit;
}

$file = $files[$idx];

header('Content-Type: application/octet-stream');
header('Content-Disposition: attachment; filename="'.urlencode(${file}).'"');
echo file_get_contents(dirname(__FILE__) . '/' . $file);
