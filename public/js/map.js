/****Карта в контактах*****/


if ($('.map').length > 0) {
	ymaps.ready(function () {

		var str = $('.map').attr('data-coords');
		var arr = str.split(',');
		var lt = arr[0];
		var lg = arr[1];
		if (lt == '') return;

		var content = $('.map').attr('data-content');

		var myMap = new ymaps.Map('map', {
				center: [lt, lg],
				zoom: 15,
				controls: []
			}, {
				searchControlProvider: 'yandex#search'
			}),
			
			HintLayout = ymaps.templateLayoutFactory.createClass( "<div class='my-hint'>" +
				"{{ properties.address }}" +
				"</div>", {
					// Определяем метод getShape, который
					// будет возвращать размеры макета хинта.
					// Это необходимо для того, чтобы хинт автоматически
					// сдвигал позицию при выходе за пределы карты.
					getShape: function () {
						var el = this.getElement(),
							result = null;
						if (el) {
							var firstChild = el.firstChild;
							result = new ymaps.shape.Rectangle(
								new ymaps.geometry.pixel.Rectangle([
									[-50, 25],
									[firstChild.offsetWidth, firstChild.offsetHeight]
								])
							);
						}
						return result;
					}
				}
			);

		myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
			address: content
		}, {
			hintLayout: HintLayout,
			iconLayout: 'default#image',
			iconImageHref: '/public/images/placemark.png',
			iconImageSize: [72,96],
			// Смещение левого верхнего угла иконки относительно
			// её "ножки" (точки привязки).
			iconImageOffset: [-38, -96]
		});

		myMap.controls.add('zoomControl', {
			size: 'large',
			position: {
				top: '80px',
				right: '15px'
			}
		});

		// myMap.behaviors.disable('scrollZoom');

		myMap.geoObjects.add(myPlacemark);
		if(window.innerWidth < 980) {
			myMap.behaviors.disable('drag');
		}
	});
}

/****Карта в проектах*****/


if ($('.project_map').length > 0) {
	ymaps.ready(function () {

		var str = $('.project_map').attr('data-coords');
		var arr = str.split(',');
		var lt = arr[0];
		var lg = arr[1];
		if (lt == '') return;

		var content = $('.project_map').attr('data-content');

		var myMap = new ymaps.Map('projectMap', {
				center: [lt, lg],
				zoom: 13,
				controls: []
			}, {
				searchControlProvider: 'yandex#search'
			}),
			HintLayout = ymaps.templateLayoutFactory.createClass( "<div class='my-hint'>" +
				"{{ properties.address }}" +
				"</div>", {
					// Определяем метод getShape, который
					// будет возвращать размеры макета хинта.
					// Это необходимо для того, чтобы хинт автоматически
					// сдвигал позицию при выходе за пределы карты.
					getShape: function () {
						var el = this.getElement(),
							result = null;
						if (el) {
							var firstChild = el.firstChild;
							result = new ymaps.shape.Rectangle(
								new ymaps.geometry.pixel.Rectangle([
									[-50, 0],
									[firstChild.offsetWidth, firstChild.offsetHeight]
								])
							);
						}
						return result;
					}
				}
			);

		myPlacemark = new ymaps.Placemark(myMap.getCenter(), {
			address: content
		}, {
			hintLayout: HintLayout,
			iconLayout: 'default#image',
			iconImageHref: '/public/images/project_placemark.png',
			iconImageSize: [42,56],
			// Смещение левого верхнего угла иконки относительно
			// её "ножки" (точки привязки).
			iconImageOffset: [-20, -60]
		});

		myMap.controls.add('zoomControl', {
			size: 'auto',
			position: {
				top: '40px',
				right: '10px'
			}
		});

		// myMap.behaviors.disable('scrollZoom');

		myMap.geoObjects.add(myPlacemark);
		if(window.innerWidth < 980) {
			myMap.behaviors.disable('drag');
		}
	});
}
