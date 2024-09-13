<div class='input_block input_file_block'>
    <span><?= $title ?>:</span>
    <input id='file_<?= $name ?>' type='file' name='<?= $name ?>' accept='<?= $accept ?>' <?php if ($required) echo 'required' ?>>
    <label for='file_<?= $name ?>'>Выбрать файл</label>
</div>

<?php
if ($field) $name = $field;

if (!empty($object->$field)): ?>
    <div class='admin_file_container'>
        <a href='<?= $path . "/" . $object->$field ?>' target='_blank'><?= $object->$field ?></a>
        <button type='button' class='file_delete' data-id='<?= $object->id ?>' data-class='<?= get_class($object) ?>' data-path='<?= $path ?>' data-field='<?= $name ?>'></button>
    </div>
<?php endif; ?>