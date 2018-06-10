/*
person(surename, name, sex, age, hobby, city, profession, kids).

preference(person_surename, person_name, preference_object,
preference_value).
preference_object - person's parameter, i.e. sex, age or hobby


mel := person{first_name: "Mel", second_name: "Forest", sex: "M"}.

*/

sex(mel, m).
sex(den, m).
sex(kate, f).

age(mel, 40).
age(den, 25).
age(kate, 22).

hobby(mel, alcohol).
hobby(den, jogging).
hobby(kate, jogging).

city(mel, tver).
city(den, petersburg).
city(kate, petersburg).

profession(mel, mechanic).
profession(den, artist).
profession(kate, architect).

kids(mel, maybe).
kids(den, no).
kids(kate, no).

preference(mel, f).
preference(den, jogging).
preference(kate, jogging).

match(X, Y):-
    (
    (   sex(Y, S), preference(X, S));
    (   age(Y, A), preference(X, A));
    (   hobby(Y, H), preference(X, H));
    (   city(Y, C), preference(X, C));
    (   profession(Y, P), preference(X, P));
    (   kids(Y, K), preference(X, K))
    ),
    not(X = Y).
