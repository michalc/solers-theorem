theory Solers
imports Main
begin

theorem
  shows "1 + 1 = 2"
  by auto

theorem
  shows "A \<and> B --> B \<and> A"
proof
  assume ab: "A \<and> B"
  from this show "B \<and> A"
  proof
    assume "B" "A"
    from this show ?thesis ..
  qed
qed

end
