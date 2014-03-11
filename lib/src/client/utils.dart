part of mapsengine_v1_api;

class SchemaArray<E> extends dart_collection.ListBase<E> {
  core.List innerList = new core.List();

  core.int get length => innerList.length;

  void set length(core.int length) {
    innerList.length = length;
  }

  void operator[]=(core.int index, E value) {
    innerList[index] = value;
  }

  E operator [](core.int index) => innerList[index];

  // Though not strictly necessary, for performance reasons
  // you should implement add and addAll.

  void add(E value) => innerList.add(value);

  void addAll(core.Iterable<E> all) => innerList.addAll(all);
}

