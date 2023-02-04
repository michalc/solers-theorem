theory Solers
imports Main
begin

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
