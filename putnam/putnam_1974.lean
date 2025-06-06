import Mathlib
open BigOperators
open Set
open Nat
open Polynomial
open Topology Filter

abbrev putnam_1974_a1_solution : ℕ := sorry
-- 11
theorem putnam_1974_a1
(conspiratorial : Set ℤ → Prop := fun S => ∀ a ∈ S, ∀ b ∈ S, ∀ c ∈ S, (a > 0 ∧ b > 0 ∧ c > 0) ∧ ((a ≠ b ∧ b ≠ c ∧ a ≠ c) → (Int.gcd a b > 1 ∨ Int.gcd b c > 1 ∨ Int.gcd a c > 1)))
: (∀ S : Set ℤ, S ⊆ Icc 1 16 → conspiratorial S → S.encard ≤ putnam_1974_a1_solution) ∧ (∃ S : Set ℤ, S ⊆ Icc 1 16 ∧ conspiratorial S ∧ S.encard = putnam_1974_a1_solution) := by
sorry

abbrev putnam_1974_a3_solution : (Set ℕ) × (Set ℕ) := sorry
-- ({p : ℕ | p.Prime ∧ p ≡ 1 [MOD 8]}, {p : ℕ | p.Prime ∧ p ≡ 5 [MOD 8]})
theorem putnam_1974_a3
(assmption : ∀ p : ℕ, p.Prime ∧ p > 2 → ((∃ m n : ℤ, p = m^2 + n^2) ↔ p ≡ 1 [MOD 4]))
: ∀ p : ℕ, ((p.Prime ∧ p > 2 ∧ (∃ x y : ℤ, p = x^2 + 16*y^2)) ↔ p ∈ putnam_1974_a3_solution.1) ∧ ((p.Prime ∧ p > 2 ∧ (∃ x y : ℤ, p = 4*x^2 + 4*x*y + 5*y^2)) ↔ p ∈ putnam_1974_a3_solution.2) := by
sorry

noncomputable abbrev putnam_1974_a4_solution : ℕ → ℝ := sorry
-- (fun n => (n / 2^(n-1)) * (n-1).choose (floor ((n-1)/2)))
theorem putnam_1974_a4
(n : ℕ)
(hn : n > 0)
: (1 : ℝ)/(2^(n-1)) * ∑ k in Finset.Icc 0 ((ceil (n/2)) - 1), (n - 2*k)*(n.choose k) = putnam_1974_a4_solution n := by
sorry

abbrev putnam_1974_a6_solution : ℕ := sorry
-- 25
theorem putnam_1974_a6
(n : ℤ := 10^6)
(hdivnallx : Polynomial ℤ → Prop := fun f => Monic f ∧ (∀ x : ℤ, (n : ℤ) ∣ f.eval x))
: sInf {d : ℕ | ∃ f : Polynomial ℤ, hdivnallx f ∧ d = f.natDegree} = putnam_1974_a6_solution := by
sorry

theorem putnam_1974_b3
(α : ℝ)
(ha : Real.cos (Real.pi * α) = (1 : ℝ)/3)
: Irrational α := by
sorry

theorem putnam_1974_b4
(f : ℝ × ℝ → ℝ)
(hfcontx : ∀ y : ℝ, Continuous (fun x => f ⟨x, y⟩))
(hfconty : ∀ x : ℝ, Continuous (fun y => f ⟨x, y⟩))
: ∃ g : ℕ → (ℝ × ℝ → ℝ), (∀ n : ℕ, Continuous (g n)) ∧ (∀ x y : ℝ, Tendsto (fun n => g n ⟨x, y⟩) atTop (𝓝 (f ⟨x, y⟩))) := by
sorry

theorem putnam_1974_b5
: ∀ n ≥ 0, ∑ i in Finset.Icc (0 : ℕ) n, (n^i : ℝ)/(Nat.factorial i) > (Real.exp n)/2 := by
sorry

abbrev putnam_1974_b6_solution : (ℕ × ℕ × ℕ) := sorry
-- ((2^1000 - 1)/3, (2^1000 - 1)/3, 1 + (2^1000 - 1)/3)
theorem putnam_1974_b6
(n : ℤ := 1000)
(count0 : ℕ := {S | S ⊆ Finset.Icc 1 n ∧ S.card ≡ 0 [MOD 3]}.ncard)
(count1 : ℕ := {S | S ⊆ Finset.Icc 1 n ∧ S.card ≡ 1 [MOD 3]}.ncard)
(count2 : ℕ := {S | S ⊆ Finset.Icc 1 n ∧ S.card ≡ 2 [MOD 3]}.ncard)
: (count0, count1, count2) = putnam_1974_b6_solution := by
sorry
