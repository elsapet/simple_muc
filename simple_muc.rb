Subject = Struct.new(:subject, :third_sing)
Verb = Struct.new(:verb, :third_sing)

arr_subjects = [
	Subject.new('Dearest lovely,', false),
	Subject.new('It is you who', true),
	Subject.new('It is when I see you that I', false)
]

arr_verbs = [
	Verb.new('wait ever so patiently for', 'waits ever so patiently for'),
	Verb.new('carry', 'carries'),
	Verb.new('lift', 'lifts')
]

arr_objects = [
	'the sorrows of my heart',
	'your smile of Spring',
	'the promise of a tomorrow together'
]

prng = Random.new
random_1 = prng.rand(0..2)
random_2 = prng.rand(0..2)
random_3 = prng.rand(0..2)

Subj = arr_subjects[random_1]

verb = Subj.third_sing ? arr_verbs[random_2].third_sing : arr_verbs[random_2].verb

object = arr_objects[random_3]

puts Subj.subject + " " + verb + " " + object
puts "The end.\n"
puts "Love, \nComputer."
