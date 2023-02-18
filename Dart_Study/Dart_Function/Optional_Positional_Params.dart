String sayHello(String name, int age, [String? country = 'cuba']) =>
    'Hello $name, you are $age, from $country';

void main() {
  sayHello('nico', 12);
}
