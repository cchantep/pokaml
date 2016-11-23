type fruit = Apple | Orange | Banana

type foo = {
  lorem : string;
  ipsum : int;
  eaten : fruit;
}

let bar : foo =
  let lorem = "lorem" in
  let ipsum = 2 in
  let eaten = Orange in
  { lorem; ipsum; eaten }

let update (initial : foo) (l : string): foo =
  { initial with lorem = l }
