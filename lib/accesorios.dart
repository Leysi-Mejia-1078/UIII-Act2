class Accesorios {
  String id;
  String name;
  String description;
  String price;
  String imageURL;
  int star;
  int noOfRating;

  Accesorios({
    required this.id,
    required this.noOfRating,
    required this.name,
    required this.description,
    required this.price,
    required this.imageURL,
    required this.star,
  });
}

List<Accesorios> accesoriosAnillo = [
  Accesorios(
    id: '1',
    noOfRating: 10,
    name: "Anillo Brisa de Luz \nOro Amarillo 14k",
    price: '3,250',
    imageURL: 'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/anilloo3.png',
    star: 4,
    description:
        "Delicado y elegante, el anillo Brisa de Luz está elaborado en oro amarillo de 14k y adornado con una sutil hilera de circonias cúbicas en forma de espiga.",
  ),
  Accesorios(
    id: '2',
    name: "Trío de Oro y Diamantes \nOro Amarillo 14k",
    price: '2,850',
    noOfRating: 21,
    imageURL: 'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/anilloo4.png',
    star: 5,
    description:
        "Una de las bandas está elegantemente engastada con una hilera de brillantes diamantes, añadiendo un toque de sofisticación y luz al conjunto.",
  ),
  Accesorios(
    id: '3',
    name: "Anillo Lazo Delicado \nOro Amarillo 14k",
    price: '2,400',
    noOfRating: 13,
    imageURL: 'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/anillo5.png',
    star: 4,
    description:
        "La forma elegante y femenina del lazo añade un toque dulce y sofisticado a cualquier look. Su diseño minimalista lo hace perfecto para usar solo o apilado con otros anillos.",
  ),
  Accesorios(
    id: '4',
    name: "Destello de Circonias \nOro Amarillo 14k",
    price: '2,500',
    imageURL: 'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/anillo6.png',
    star: 5,
    noOfRating: 100,
    description:
        "Este hermoso anillo presenta una elegante banda de oro amarillo, realzada por una deslumbrante circonia central con un fascinante efecto tornasol, mostrando una gama de colores iridiscentes que capturan la luz desde todos los ángulos. ",
  ),
];

List<Accesorios> accesoriosCollar = [
  Accesorios(
    id: '1',
    name: " Aros de Oro Brillante \nOro Amarillo 14k",
    price: '5,500',
    noOfRating: 111,
    star: 5,
    imageURL: 'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/pendientes1.png',
    description:
        "Este par de aretes presenta un diseño moderno y elegante de aros gruesos con una forma ligeramente ovalada y un acabado pulido de alto brillo que captura la luz de manera espectacular.",
  ),
  Accesorios(
    id: '2',
    name: "Pendientes Cápsula \nOro Amarillo 14k",
    price: '2,000',
    noOfRating: 11,
    star: 5,
    imageURL: 'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/pendientes4.png',
    description:
        "Este distinguido par de pendientes presenta un diseño colgante con una estética vintage y sofisticada. Cada pendiente cuenta con una gema de color azul intenso, similar a un zafiro, engastada en la parte superior con un corte facetado que captura la luz maravillosamente. ",
  ),
  Accesorios(
    id: '2',
    name: "Pendientes de Oro Audaz \nOro Amarillo 14k",
    price: '4,000',
    noOfRating: 0,
    star: 4,
    imageURL: 'https://raw.githubusercontent.com/Leysi-Mejia-1078/imagenes/refs/heads/main/pendientes3.png',
    description:
        "Este par de aretes presenta un diseño moderno y escultural con eslabones entrelazados de metal dorado brillante. Su forma audaz y voluminosa los convierte en una declaración de estilo que no pasará desapercibida. El acabado pulido del metal dorado añade un toque de lujo y sofisticación.",
  )
];