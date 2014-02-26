Subject = Struct.new(:subject, :third_sing)
Verb = Struct.new(:verb, :third_sing)

arr_subjects = [
	Subject.new('Dearest lovely,', false),
	Subject.new('It is you who', true),
	Subject.new('It is when I see you that I', false),
	# Shakespeare influenced
	Subject.new('Unthrifty lovlieness, why dost thou', false),
	Subject.new('O ! That you were yourself; but, love, you', false),
	Subject.new('The forward violet thus did I chide : Sweet thief', false),
	Subject.new('O ! For my sake do you', false),
	Subject.new('My mistress\' eyes', false)
]

arr_verbs = [
	Verb.new('wait ever so patiently for', 'waits ever so patiently for'),
	Verb.new('carry', 'carries'),
	Verb.new('lift', 'lifts'),
	Verb.new('become', 'becomes'),
	Verb.new('lay so softly with', 'lays so softly with'),
	Verb.new('envelope', 'envelopes'),
	Verb.new('succumb to', 'succumbs to'),
	Verb.new('drink', 'drinks')

]

arr_objects = [
	'the sorrows of my heart',
	'the sweet smile of Spring',
	'the promise of a tomorrow',
	'a rose of your choosing',
	'my heart\'s desire',
	'the very urn of my yearning',
	'a ruby-red glass of love'
]

prng = Random.new
random_1 = prng.rand(0..7)
random_2 = prng.rand(0..7)
random_3 = prng.rand(0..6)

Subj = arr_subjects[random_1]

verb = Subj.third_sing ? arr_verbs[random_2].third_sing : arr_verbs[random_2].verb

object = arr_objects[random_3]

puts Subj.subject + " " + verb + " " + object
puts "The end.\n"
puts "Love, \nComputer."
