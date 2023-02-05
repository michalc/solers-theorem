theory Solers
imports Main
begin

(* From https://www.inf.ed.ac.uk/teaching/courses/ar/tutorials/1/tut1.pdf *)

(* 1 - suspect by(auto) isn't quite in the spirit of the assignment *)

theorem
  shows "(P --> (Q --> R)) --> ((P --> Q) --> (P --> R))"
  by(auto)

(* 1 - slightly more manual style *)

theorem "(P --> (Q --> R)) --> ((P --> Q) --> (P --> R))"
apply (auto)
done

(* Attempts to build up to do the above exercises *)

theorem "\<not> P \<or> P"
apply (rule excluded_middle)
done

(* Random bits and bobs *)

theorem
  shows "1 + 1 = 2"
proof -
  show ?thesis by(auto)
qed

theorem
  assumes "A \<and> B"
  shows "B \<and> A"
proof -
  from `A \<and> B` have "B" ..
  moreover
  from `A \<and> B` have "A" ..
  ultimately show "B \<and> A" ..
qed

theorem
  assumes Pf: "\<exists> x. P(f x)"
  shows "\<exists> y. P(y)"
proof -
  from Pf obtain x where "P(f x)" ..
  thus "\<exists> y. P y" ..
qed

theorem
  shows "\<not> A \<or> A"
proof (cases "A")
  case True thus ?thesis ..
next
  case False thus ?thesis ..
qed

end
