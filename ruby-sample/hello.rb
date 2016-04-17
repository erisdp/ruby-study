=begin
 Class
=end

class User

	def initialize(name)
		@name = name;
	end

	def hello
		puts "hello - #{@name}";
	end

end

class HogeUser < User
	attr_accessor :rw_item;
	attr_reader :r_item;
	attr_writer :w_item;

	def initialize(name)
		@name = name;
		@r_item = name;
	end

	def hoge
		puts "hoge hoge -  #{@name} #{@w_item}";
	end

end

user = User.new("momo");
user.hello();

hoge_user = HogeUser.new("tete");
hoge_user.hello();
hoge_user.hoge();
hoge_user.rw_item  = "huga";
puts hoge_user.rw_item;
puts hoge_user.r_item;
puts hoge_user.w_item = "wwwww";
hoge_user.hoge();


=begin
 function
=end

=begin
def sample_func(val = "hoge")
	s = "hello - " + val;
	return s;
end

ss = sample_func("momo");
puts ss;

ss = sample_func();
puts ss;
=end

=begin
 times
 while
 for
 each
=end

=begin
def sample_func
	5.times do |i|
		next if i == 1;
		break if i > 3;
		puts "#{i}: hello";
	end
	puts "------"

	i = 0;
	while i < 5 do
		puts "#{i}: hello";
		i += 1;
	end
	puts "------"

	for i in 0..5 do
		puts "#{i}: hello";
	end
	puts "------"

	for color in ["red", "blue", "black"] do
		puts color;
	end
	puts "------"

	["red", "blue", "black"].each do |color|
		puts color;
	end
	puts "------"

	{"red"=>100, "blue"=>200, "black"=>300}.each do |color, value|
		puts "#{color}: #{value}";
	end
end

sample_func
=end

=begin
 if, case
 true:  下記以外（0, ''含む）
 false:  false nil 
=end

=begin
def sample_func
	x = 100;

	if x > 100
		puts "hoge";
	elsif x > 50
		puts "huga";
	else
		puts "tete";
	end

	puts "momo" if x == 100;

	y, z = 10, 20;
	n = x > 80 ? y : z;
	puts n;

	color = "blue";
	case color
	when "red"
		puts "111";
	when "green", "blue"
		puts "222";
	when "yellow"
		puts "333";
	else
		puts "err";
	end
end

sample_func
=end

=begin
 %記法
=end

=begin
def sample_func
	# s = "hello"
	s1 = %(hello);
	s2 = %/hello/;
	s3 = %Q(hello);
	p s1;

	# s = 'hello'
	s4 = %q(hello);
	p s4;

	# a = ["a", "b", "c"]
	a1 = %W(a b c);
	p a1;

	# a = ['a', 'b', 'c']
	a2 = %w(a b c);
	p a2;

	# k = :simble
	k1 = %s(key1);
	p k1;

	# ak = [:simble1, :simble2]
	ak = %i(simble1 simble2);
	p ak;

end

sample_func
=end

=begin
 to Convert
=end

=begin
def sample_func
	x = 10;
	y = "5";
	p x + y.to_i;
	p x + y.to_f;
	p x.to_s + y;

	hash = {hoge:100, momo:200};
	p hash.to_a;
	p hash.to_a.to_h;

	array = [{hoge:100, momo:200}, {huga:300, tete:400}];
	p array;
	p array[0][:hoge];

end

sample_func
=end

=begin
 Hash
=end

=begin
def sample_func
	hash1 = {"hoge" => 100, "momo" => 200};
	p hash1["hoge"];

	hash2 = {:hoge => 100, :momo => 200};
	p hash2[:hoge];

	hash3 = {hoge:100, momo:200};
	p hash3[:hoge];

	p hash3.size;
	p hash3.keys;
	p hash3.values;
	p hash3.has_key?(:hoge);

end

sample_func
=end

=begin
 Array
=end

=begin
def sample_func
	array = [10, 20, 30, 40, 50];
	array[2] = 31;

	p array[2];
	p array[0..2];
	p array[0...2];
	p array[-1];
	p array[1, 2];


	array[0...2] = [1, 2];
	p array;

	array[1, 0] = [10, 11, 12];
	p array;

	array[0, 2] = [];
	p array;

	p array.size;
	p array.sort;
	p array.sort.reverse;
	p array.push(100);

	array << 200 << 300;
	p array;
end

sample_func
=end

=begin
Method
 ! 破壊的メソッド
 ? 真偽値返却メソッド
=end

=begin
def sample_func
	s = "hogehoge";
	puts s.upcase;
	puts s;

	puts s.upcase!;
	puts s;

	ss = "";
	puts s.empty?;
	puts ss.empty?;

end

sample_func
=end

=begin
String Class
=end
=begin
def sample_func
	name = "hoge";
	x = "hello \tworld\n #{name}"; # 特殊文字、変数展開
	y = 'hello \tworld\n #{name}';

	puts x;
	puts y;

	puts "hello world " + "momo";
	puts "hello " * 5;

end

sample_func
=end

=begin
Numeric Class
=end
=begin
def sample_func
	x = 10; # 100_000_000
	y = 20.5
	z = 1/3r #Rational(1,3)

	p x % 3;  # 1
	p x ** 3; # 1000
	p z * 2;  # 2/3

	x += 5; # 自己代入
	p x;

	p y.round;
end

sample_func
=end

=begin
ローカル変数
定数
=end

=begin
HOGE = "HELLO WORLD";
def sample_func
	hoge = "hello world";
	p hoge;
	p hoge.length;

	p HOGE;
end

# run
sample_func
=end

