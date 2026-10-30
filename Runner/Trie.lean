/-! A persistent binary trie keyed by natural numbers, read least significant
bit first. The runner keeps source memory in it: an update allocates one
path, and every older version stays valid. -/
namespace Runner

inductive Trie (α : Type) where
  | leaf
  | node (value : Option α) (zero one : Trie α)

namespace Trie

variable {α : Type}

def get : Trie α → Nat → Option α
  | .leaf, _ => none
  | .node value zero one, key =>
      if key = 0 then value
      else if key % 2 = 0 then get zero (key / 2) else get one (key / 2)

def value : Trie α → Option α
  | .leaf => none
  | .node value _ _ => value

def zero : Trie α → Trie α
  | .leaf => .leaf
  | .node _ zero _ => zero

def one : Trie α → Trie α
  | .leaf => .leaf
  | .node _ _ one => one

def set (trie : Trie α) (key : Nat) (x : α) : Trie α :=
  if key = 0 then .node (some x) trie.zero trie.one
  else if key % 2 = 0 then .node trie.value (set trie.zero (key / 2) x) trie.one
  else .node trie.value trie.zero (set trie.one (key / 2) x)
termination_by key
decreasing_by all_goals omega

theorem get_eq (trie : Trie α) (key : Nat) : get trie key =
    if key = 0 then trie.value
    else if key % 2 = 0 then get trie.zero (key / 2) else get trie.one (key / 2) := by
  cases trie with
  | leaf => simp [get, value, zero, one]
  | node => rfl

theorem get_set (trie : Trie α) (key other : Nat) (x : α) :
    get (set trie key x) other = if other = key then some x else get trie other := by
  induction key using Nat.strongRecOn generalizing trie other with
  | _ key ih =>
    rw [set]
    by_cases k0 : key = 0
    · subst key
      rw [get_eq trie other]
      by_cases o0 : other = 0 <;> simp [get, o0]
    · rw [get_eq trie other]
      have half : key / 2 < key := by omega
      by_cases k2 : key % 2 = 0
      · simp only [k0, k2, if_false, if_true, get]
        by_cases o0 : other = 0
        · simp [o0, Ne.symm k0]
        · by_cases o2 : other % 2 = 0
          · simp only [o0, o2, if_false, if_true, ih _ half]
            have : (other / 2 = key / 2) ↔ other = key := by omega
            simp [this]
          · simp only [o0, o2, if_false]
            have : other ≠ key := by omega
            simp [this]
      · simp only [k0, k2, if_false, get]
        by_cases o0 : other = 0
        · simp [o0, Ne.symm k0]
        · by_cases o2 : other % 2 = 0
          · simp only [o0, o2, if_false, if_true]
            have : other ≠ key := by omega
            simp [this]
          · simp only [o0, o2, if_false, ih _ half]
            have : (other / 2 = key / 2) ↔ other = key := by omega
            simp [this]

@[simp] theorem get_leaf (key : Nat) : get (.leaf : Trie α) key = none := by
  cases key <;> rfl

end Trie
end Runner
