theory Solers
imports Main
begin

(* Solèr's theorem *)
(* Baby steps in an attempt to just state it in Isabelle *)

theorem (in division_ring) solers:
  shows "1 + 1 = 2"
proof -
  show ?thesis by(auto)
qed

(* From https://www.inf.ed.ac.uk/teaching/courses/ar/tutorials/1/tut1.pdf *)
(* Or from https://www.inf.ed.ac.uk/teaching/courses/ar//isabelle/Prop.thy *)

(* 1 - suspect by(auto) isn't quite in the spirit of the assignment *)

theorem
  shows "(P --> (Q --> R)) --> ((P --> Q) --> (P --> R))"
  by(auto)

(* 1 - slightly more manual style *)

theorem "(P --> (Q --> R)) --> ((P --> Q) --> (P --> R))"
apply (auto)
done

(* 1 - more manual style and I suspect in the spirit of the question *)
(* although some of it was trial and error... *)

theorem "(P --> (Q --> R)) --> ((P --> Q) --> (P --> R))"
apply (rule impI)
apply (rule impI)
apply (rule impI)
apply (erule impE)
apply (assumption)
apply (erule impE)
apply (assumption)
apply (erule impE)
apply (assumption)
apply (assumption)
done

(* 2 *)

theorem "\<not> \<not> P --> P"
apply (rule impI)
apply (rule ccontr)
apply (erule notE)
apply (assumption)
done

(* Attempts to build up to do the above exercises *)

theorem "\<not> P \<or> P"
apply (rule excluded_middle)
done

theorem "\<not> (A \<and> B) \<or> (A \<and> B)"
apply (rule excluded_middle)
done

theorem "P --> P"
apply (rule impI)
apply (assumption)
done

theorem "A --> (B --> A)"
apply (rule impI)
apply (rule impI)
apply (assumption)
done

theorem "\<lbrakk> P;Q \<rbrakk> \<Longrightarrow> P \<and> (Q \<and> P)"
apply (rule conjI)
apply (assumption)
apply (rule conjI)
apply (assumption)
apply (assumption)
done

theorem "\<lbrakk> A \<or> B \<rbrakk> \<Longrightarrow> B \<or> A"
apply (rule disjE)
apply (assumption) (* Still not completely sure how this works *)
apply (rule disjI2)
apply (assumption)
apply (rule disjI1)
apply (assumption)
done

(* Converting the proof from https://www.inf.ed.ac.uk/teaching/courses/ar//slides03.pdf *)
theorem "((S \<or> R) \<and> \<not> S) \<longrightarrow> R"
apply (rule impI)
apply (rule disjE)
apply (rule conjunct1)
apply (assumption)
apply (rule notE)
apply (rule conjunct2)
apply (assumption)
apply (assumption)
apply (assumption)
done

theorem "\<lbrakk> A;B;C;D;E;F \<rbrakk> \<Longrightarrow> A"
apply (assumption)
done

(* Attempt at converting the proof at https://www.youtube.com/watch?v=lLJORsLwN3k in very low level way *)
theorem "A \<and> (B \<and> C) \<Longrightarrow> (A \<and> B) \<and> C"
apply (rule conjI)
apply (rule conjI)
apply (rule conjunct1)
apply (assumption)
apply (rule conjunct1)
apply (rule conjunct2)
apply (assumption)
apply (rule conjunct2)
apply (rule conjunct2)
apply (assumption)
done

theorem "\<lbrakk> A;\<not> A \<rbrakk> \<Longrightarrow> R"
apply (erule notE)
apply (assumption)
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
