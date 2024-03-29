theory Thm imports Main begin

thm conjI       (* ⟦?P; ?Q⟧ ⟹ ?P ∧ ?Q *)
thm conjE       (* ⟦?P ∧ ?Q; ⟦?P; ?Q⟧ ⟹ ?R⟧ ⟹ ?R *)
thm conjunct1   (* ?P ∧ ?Q ⟹ ?P  usually using with drule, but sometimes with erule *)
thm conjunct2   (* ?P ∧ ?Q ⟹ ?Q   usually using with drule, but sometimes with erule*)
thm disjI1      (* ?P ⟹ ?P ∨ ?Q *)
thm disjI2      (* ?Q ⟹ ?P ∨ ?Q *)
thm disjE       (* ⟦?P ∨ ?Q; ?P ⟹ ?R; ?Q ⟹ ?R⟧ ⟹ ?R  always usable *)
thm impI        (* (?P ⟹ ?Q) ⟹ ?P ⟶ ?Q  usually using with rule *)
thm mp          (* ⟦?P ⟶ ?Q; ?P⟧ ⟹ ?Q  usually using with drule *)
thm iffI        (* ⟦?P ⟹ ?Q; ?Q ⟹ ?P⟧ ⟹ ?P = ?Q *)
thm notI        (* (?P ⟹ False) ⟹ ¬ ?P *)
thm ccontr      (* (¬ ?P ⟹ False) ⟹ ?P *)
thm notE        (* ⟦¬ ?P; ?P⟧ ⟹ ?R *)
thm classical   (* (¬ ?P ⟹ ?P) ⟹ ?P  using with rule *)
thm subst       (* ⟦?s = ?t; ?P ?s⟧ ⟹ ?P ?t *)
thm ssubst      (* ⟦?t = ?s; ?P ?s⟧ ⟹ ?P ?t *)
thm allI        (* (⋀x. ?P x) ⟹ ∀x. ?P x *)
thm spec        (* ∀x. ?P x ⟹ ?P ?x  using with drule_tac *)
thm exI         (* ?P ?x ⟹ ∃x. ?P x  using with rule_tac *)
thm exE         (* ⟦∃x. ?P x; ⋀x. ?P x ⟹ ?Q⟧ ⟹ ?Q   always usable *)

thm insert_iff  (* (?a ∈ insert ?b ?A) = (?a = ?b ∨ ?a ∈ ?A) *)
thm empty_iff   (* (?c ∈ {}) = False *)
thm mem_Collect_eq  (* (?a ∈ Collect ?P) = ?P ?a  集合の記法{}を外すときに使う。Collect P は {x. P x} と同じ *)
thm subsetI     (* (⋀x. x ∈ ?A ⟹ x ∈ ?B) ⟹ ?A ⊆ ?B  subsetの証明をする第一手目はこれ *)
thm CollectI    (* ?P ?a ⟹ ?a ∈ {x. ?P x} ruleでつかうことが多い。subst mem_Collect_eqでもよい *)
thm CollectD    (* ?a ∈ {x. ?P x} ⟹ ?P ?a *)
thm UNIV_def    (* UNIV = {x. True} *)
thm UNIV_I      (* ?x ∈ UNIV *)
thm Pow_def     (* Pow ?A = {B. B ⊆ ?A} *)
thm equalityI   (* ?A ⊆ ?B ⟹ ?B ⊆ ?A ⟹ ?A = ?B *)


thm ballI       (* (⋀x. x ∈ ?A ⟹ ?P x) ⟹ ∀x∈?A. ?P x *)
thm bspec       (* ∀x∈?A. ?P x ⟹ ?x ∈ ?A ⟹ ?P ?x *)
thm bexI        (* ?P ?x ⟹ ?x ∈ ?A ⟹ ∃x∈?A. ?P x *)
thm bexE        (* ∃x∈?A. ?P x ⟹ (⋀x. x ∈ ?A ⟹ ?P x ⟹ ?Q) ⟹ ?Q *)

thm UnionI      (* ?X ∈ ?C ⟹ ?A ∈ ?X ⟹ ?A ∈ ⋃ ?C *)
thm UnionE      (* ?A ∈ ⋃ ?C ⟹ (⋀X. ?A ∈ X ⟹ X ∈ ?C ⟹ ?R) ⟹ ?R *)
thm InterI      (* (⋀X. X ∈ ?C ⟹ ?A ∈ X) ⟹ ?A ∈ ⋂ ?C *)
thm InterD      (* ?A ∈ ⋂ ?C ⟹ ?X ∈ ?C ⟹ ?A ∈ ?X *)
thm UN_I        (* ?a ∈ ?A ⟹ ?b ∈ ?B ?a ⟹ ?b ∈ ⋃ (?B ` ?A) *)
thm UN_E        (* ?b ∈ ⋃ (?B ` ?A) ⟹ (⋀x. x ∈ ?A ⟹ ?b ∈ ?B x ⟹ ?R) ⟹ ?R *)
thm INT_I       (* (⋀x. x ∈ ?A ⟹ ?b ∈ ?B x) ⟹ ?b ∈ ⋂ (?B ` ?A) *)
thm INT_D       (* ?b ∈ ⋂ (?B ` ?A) ⟹ ?a ∈ ?A ⟹ ?b ∈ ?B ?a *)

thm image_def   (* ?f ` ?A = {y. ∃x∈?A. y = ?f x} *)
thm fun_upd_def (* ?f(?a := ?b) = (λx. if x = ?a then ?b else ?f x) *)
thm ext         (* (⋀x. ?f x = ?g x) ⟹ ?f = ?g  外延性の公理 *)
thm fun_cong    (* ?f = ?g ⟹ ?f ?x = ?g ?x *)
thm o_def       (* ?f ∘ ?g = (λx. ?f (?g x)) *)
thm image_def   (* ?f ` ?A = {y. ∃x∈?A. y = ?f x} *)
thm vimage_def  (* ?f -` ?B ≡ {x. ?f x ∈ ?B} *)
thm inj_on_def  (* inj_on ?f ?A = (∀x∈?A. ∀y∈?A. ?f x = ?f y ⟶ x = y) *)
thm surj_def    (* surj ?f = (∀y. ∃x. y = ?f x) *)
thm bij_def     (* bij ?f = (inj ?f ∧ surj ?f) *)

thm (?a, ?b) ∈ ?r⇧* ⟹ ?P ?a ⟹ (⋀y z. (?a, y) ∈ ?r⇧* ⟹ (y, z) ∈ ?r ⟹ ?P y ⟹ ?P z) ⟹ ?P ?b
thm relcomp_unfold  (* ?r O ?s = {(x, z). ∃y. (x, y) ∈ ?r ∧ (y, z) ∈ ?s} *)
thm rtrancl_refl  (* (?a, ?a) ∈ ?r⇧* *)
thm rtrancl_trans  (* (?x, ?y) ∈ ?r⇧* ⟹ (?y, ?z) ∈ ?r⇧* ⟹ (?x, ?z) ∈ ?r⇧* *)
thm converseD  (* (?a, ?b) ∈ ?r¯ ⟹ (?b, ?a) ∈ ?r *)
thm r_into_rtrancl  (* ?p ∈ ?r ⟹ ?p ∈ ?r⇧* *)





