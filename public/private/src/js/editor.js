$(document).ready(function () {

    $('.editor').summernote({
        fontNames: [
            'Arial',
            'Arial Black',
            'Comic Sans MS',
            'Courier New',
            'Merriweather',
            'Inter',
            'HelveticaNeueCyr'
        ],
        fontSizes: ['8', '9', '10', '11', '12', '13', '14', '15', '16', '18', '20', '22', '24', '28', '32', '36', '40', '48'],
        height: 300,
        lang: 'ru-RU',
        toolbar: [
            // [groupName, [list of button]]
            ['style'],
            ['style', ['bold', 'italic', 'underline', 'clear']],
            ['font', ['strikethrough']],
            ['fontsize', ['fontsize']],
            ['fontname', ['fontname']],
            ['color', ['color']],
            ['para', ['ul', 'ol', 'paragraph']],
            ['insert', ['picture', 'link', 'video', 'table']],
            ['misc', ['fullscreen', 'codeview', 'undo', 'redo', 'help']],
        ],
        styleTags: [
            { title: 'Заголовок 1', tag: 'h1', className: 'editor_h1', value: 'h1' },
            { title: 'Заголовок 2', tag: 'h2', className: 'editor_h2', value: 'h2' },
            { title: 'Заголовок 2.1', tag: 'h2', className: 'editor_h2_1', value: 'h2' },
            { title: 'Текст', tag: 'p', className: 'editor_text', value: 'p' },
            { title: 'Ссылка 1', tag: 'a', className: 'editor_link', value: 'a' },
        ],
        callbacks: {
            onImageUpload: function (files) {
                for (let i = 0; i < files.length; i++) {
                    $.upload(files[i], $(this));
                }
            }
        },
    });

    $.upload = function (file, editor) {

        let formData = new FormData();
        formData.append('action', 'imgUpload');
        formData.append('file', file);

        $.ajax({
            method: 'POST',
            url: '/admin/ajax',
            contentType: false,
            cache: false,
            processData: false,
            data: formData,
            success: function (src) {
                editor.summernote('insertImage', src);
            },
            error: function (jqXHR, textStatus, errorThrown) {
                console.error(textStatus + ' ' + errorThrown);
            }
        });
    };

});
